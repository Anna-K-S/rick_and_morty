part of 'favorites_bloc.dart';

@freezed
class FavoritesCharactersEvent with _$FavoritesCharactersEvent {
  const factory FavoritesCharactersEvent.toggled(
      {required Character character}) = CharacterFavoriteToggled;
  const factory FavoritesCharactersEvent.removed(
      {required Character character}) = CharacterFavoriteRemoved;
  const factory FavoritesCharactersEvent.sortChanged(
      {required SortType sortType}) = CharacterFavoriteSorted;
  const factory FavoritesCharactersEvent.loaded() = CharacterFavoriteLoaded;
}
