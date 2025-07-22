part of 'favorites_bloc.dart';

@freezed
sealed class FavoritesCharactersEvent with _$FavoritesCharactersEvent {
  const factory FavoritesCharactersEvent.toggled({
    required int id,
    required bool isFavorite,
  }) = CharacterFavoriteToggled;
  const factory FavoritesCharactersEvent.loaded() = CharacterFavoriteLoaded;
}
