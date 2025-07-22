import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/repository/favorites_characters_repository.dart';

part 'favorites_event.dart';
part 'favorites_state.dart';
part 'favorites_bloc.freezed.dart';

class FavoritesBloc
    extends Bloc<FavoritesCharactersEvent, FavoritesCharactersState> {
  final IFavoritesRepository _repository;

  FavoritesBloc(this._repository)
      : super(const FavoritesCharactersState.initial()) {
    on<FavoritesCharactersEvent>(
      (event, emit) => switch (event) {
        CharacterFavoriteToggled() => _onToggled(event, emit),
        CharacterFavoriteLoaded() => _onLoaded(event, emit),
      },
      transformer: sequential(),
    );
  }

  Future<void> _onToggled(
    CharacterFavoriteToggled event,
    Emitter<FavoritesCharactersState> emit,
  ) async {
    final favorites = switch (state) {
      FavoritesCharactersLoaded(:final favorites) ||
      FavoritesCharactersLoading(:final favorites) ||
      FavoritesCharactersError(:final favorites) =>
        favorites.toSet(),
      FavoritesCharactersInitial() => null,
    };

    if (favorites == null) {
      return;
    }

    final id = event.id;

    try {
      final contains = favorites.contains(id);

      if (contains && !event.isFavorite) {
        emit(FavoritesCharactersState.loading(favorites: favorites));
        await _repository.removeFavorite(id);
        emit(
          FavoritesCharactersState.loaded(
            favorites: favorites..remove(id),
          ),
        );

        return;
      }
      if (!contains && event.isFavorite) {
        emit(FavoritesCharactersState.loading(favorites: favorites));
        await _repository.toggleFavorite(id);

        emit(
          FavoritesCharactersState.loaded(
            favorites: favorites..add(id),
          ),
        );
      }
    } catch (e) {
      emit(
        FavoritesCharactersState.error(
          error: e,
          favorites: favorites,
        ),
      );
    }
  }

  Future<void> _onLoaded(
    CharacterFavoriteLoaded _,
    Emitter<FavoritesCharactersState> emit,
  ) async {
    emit(FavoritesCharactersState.loading(favorites: const {}));
    try {
      final favoriteIds = await _repository.getFavoriteIds();

      emit(
        FavoritesCharactersState.loaded(
          favorites: favoriteIds.toSet(),
        ),
      );
    } catch (e) {
      emit(
        FavoritesCharactersState.error(error: e, favorites: const {}),
      );
    }
  }
}
