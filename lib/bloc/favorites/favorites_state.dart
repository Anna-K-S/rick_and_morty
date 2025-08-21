part of 'favorites_bloc.dart';

@freezed
sealed class FavoritesCharactersState with _$FavoritesCharactersState {
  const factory FavoritesCharactersState.initial() = FavoritesCharactersInitial;

  const factory FavoritesCharactersState.loading({
    required List<int> favorites,
    required List<Character> characters,
  }) = FavoritesCharactersLoading;

  const factory FavoritesCharactersState.loaded({
    required List<int> favorites,
    required List<Character> characters,
  }) = FavoritesCharactersLoaded;

  const factory FavoritesCharactersState.error({
    Object? error,
    required List<int> favorites,
    required List<Character> characters,
  }) = FavoritesCharactersError;
}
