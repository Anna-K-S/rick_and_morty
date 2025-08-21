import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/data/models/character_filter.dart';
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
        // TODO: Handle this case.
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
        favorites,
      FavoritesCharactersInitial() => null,
    };

    if (favorites == null) {
      return;
    }

    final id = event.id;

    try {
      final contains = favorites.contains(id);
      if (contains && !event.isFavorite) {
        emit(FavoritesCharactersState.loading(
            favorites: favorites, characters: []));
        await _repository.removeFavorite(id);

        final updated = List<int>.from(favorites)..remove(id);

        emit(
          FavoritesCharactersState.loaded(
            favorites: updated,
            characters: [],
          ),
        );
        return;
      }

      if (!contains && event.isFavorite) {
        emit(FavoritesCharactersState.loading(
            favorites: favorites, characters: []));
        await _repository.toggleFavorite(id);

        final updated = List<int>.from(favorites)..add(id);

        emit(
          FavoritesCharactersState.loaded(
            favorites: updated,
            characters: [],
          ),
        );
      }
    } catch (e) {
      emit(
        FavoritesCharactersState.error(
          error: e,
          favorites: favorites,
          characters: [],
        ),
      );
    }
  }

  Future<void> _onLoaded(
    CharacterFavoriteLoaded _,
    Emitter<FavoritesCharactersState> emit,
  ) async {
    emit(FavoritesCharactersState.loading(favorites: const [], characters: []));
    final favoriteIds = await _repository.getFavoriteIds();

    try {
      emit(
        FavoritesCharactersState.loaded(
          favorites: favoriteIds,
          characters: [],
        ),
      );
    } catch (e) {
      emit(
        FavoritesCharactersState.error(
            error: e, favorites: const [], characters: []),
      );
    }
  }
}
