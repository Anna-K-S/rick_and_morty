import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/data/repository/character_repository.dart';
import 'package:rick_and_morty/data/repository/favorites_characters_repository.dart';

part 'favorites_event.dart';
part 'favorites_state.dart';
part 'favorites_bloc.freezed.dart';

class FavoritesBloc
    extends Bloc<FavoritesCharactersEvent, FavoritesCharactersState> {
  final IFavoritesRepository repository;
  final ICharacterRepository _characterRepository;

  final List<Character> _favorites = [];
  SortType _currentSort = SortType.name;

  FavoritesBloc(this.repository, this._characterRepository)
      : super(const FavoritesCharactersState.initial()) {
    on<FavoritesCharactersEvent>(
      (event, emit) async {
        await event.when(
          toggled: (character) => _onToggled(character, emit),
          removed: (character) => _onRemoved(character, emit),
          sortChanged: (sortType) => _onSortChanges(sortType, emit),
          loaded: () => _onLoaded(emit),
        );
      },
      transformer: sequential(),
    );
    add(const FavoritesCharactersEvent.loaded());
  }

  Future<void> _onToggled(
      Character character, Emitter<FavoritesCharactersState> emit) async {
    emit(const FavoritesCharactersState.loading());

    try {
      final index = _favorites.indexWhere((c) => c.id == character.id);

      if (index >= 0) {
        _favorites.removeAt(index);
        await repository.removeFavorite(character.id);
        emit(FavoritesCharactersState.loaded(
          favorites: List.unmodifiable(_favorites),
          sortType: _currentSort,
        ));
        return;
      }

      _favorites.add(character);
      await repository.toggleFavorite(character.id);

      _sortFavorites();

      emit(FavoritesCharactersState.loaded(
        favorites: List.unmodifiable(_favorites),
        sortType: _currentSort,
      ));
    } catch (e) {
      emit(FavoritesCharactersState.error(error: e));
    }
  }

  Future<void> _onRemoved(
      Character character, Emitter<FavoritesCharactersState> emit) async {
    emit(const FavoritesCharactersState.loading());

    try {
      _favorites.removeWhere((c) => c.id == character.id);
      await repository.removeFavorite(character.id);

      _sortFavorites();

      emit(FavoritesCharactersState.loaded(
        favorites: List.unmodifiable(_favorites),
        sortType: _currentSort,
      ));
    } catch (e) {
      emit(FavoritesCharactersState.error(error: e));
    }
  }

  Future<void> _onSortChanges(
      SortType sortType, Emitter<FavoritesCharactersState> emit) async {
    emit(const FavoritesCharactersState.loading());

    try {
      _currentSort = sortType;
      _sortFavorites();

      emit(FavoritesCharactersState.loaded(
        favorites: List.unmodifiable(_favorites),
        sortType: _currentSort,
      ));
    } catch (e) {
      emit(FavoritesCharactersState.error(error: e));
    }
  }

  void _sortFavorites() {
    if (_favorites.isEmpty) return;
    switch (_currentSort) {
      case SortType.name:
        _favorites.sort((a, b) => a.name.compareTo(b.name));
        break;
      case SortType.status:
        _favorites.sort((a, b) => a.status.compareTo(b.status));
        break;
    }
  }

  Future<void> _onLoaded(Emitter<FavoritesCharactersState> emit) async {
    emit(const FavoritesCharactersState.loading());
    try {
      final favoriteIds = await repository.getFavoriteIds();
      _favorites.clear();

      for (final id in favoriteIds) {
        final character = await _characterRepository.getById(id);
        _favorites.add(character);
      }

      emit(FavoritesCharactersState.loaded(
        favorites: List.unmodifiable(_favorites),
        sortType: _currentSort,
      ));
    } catch (e) {
      emit(FavoritesCharactersState.error(error: e));
    }
  }
}
