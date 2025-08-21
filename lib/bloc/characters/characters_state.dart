part of 'characters_bloc.dart';

@freezed
sealed class CharactersState with _$CharactersState {
  const factory CharactersState.initial({
    required int currentPage,
    @Default(CharacterFilter()) CharacterFilter filter,
    @Default([]) List<Character> characters,
    @Default(true) bool hasMore,
  }) = CharactersInitial;
  const factory CharactersState.loading({
    required int currentPage,
    @Default(CharacterFilter()) CharacterFilter filter,
    required List<Character> characters,
    @Default(true) bool hasMore,
  }) = CharactersLoading;
  const factory CharactersState.loaded({
    required int currentPage,
    @Default(CharacterFilter()) CharacterFilter filter,
    required List<Character> characters,
    @Default(true) bool hasMore,
  }) = CharactersLoaded;
  const factory CharactersState.error({
    required int currentPage,
    @Default(CharacterFilter()) CharacterFilter filter,
    required List<Character> characters,
    required String message,
    @Default(true) bool hasMore,
  }) = CharactersError;
}
