part of 'favorites_bloc.dart';

@freezed
sealed class FavoritesCharactersState with _$FavoritesCharactersState {
  const factory FavoritesCharactersState.initial() = FavoritesCharactersInitial;

  const factory FavoritesCharactersState.loading({
    required Set<int> favorites,
  }) = FavoritesCharactersLoading;

  const factory FavoritesCharactersState.loaded({
    required Set<int> favorites,
  }) = FavoritesCharactersLoaded;

  const factory FavoritesCharactersState.error({
    Object? error,
    required Set<int> favorites,
  }) = FavoritesCharactersError;
}
