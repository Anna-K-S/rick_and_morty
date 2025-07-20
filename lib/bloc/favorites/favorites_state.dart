part of 'favorites_bloc.dart';

enum SortType {
  name,
  status,
}

@freezed
sealed class FavoritesCharactersState with _$FavoritesCharactersState {
  const factory FavoritesCharactersState.initial() = FavoritesCharactersInitial;

  const factory FavoritesCharactersState.loading() = FavoritesCharactersLoading;

  const factory FavoritesCharactersState.loaded({
    required List<Character> favorites,
    required SortType sortType,
  }) = FavoritesCharactersLoaded;

  const factory FavoritesCharactersState.error({Object? error}) =
      FavoritesCharactersError;
}
