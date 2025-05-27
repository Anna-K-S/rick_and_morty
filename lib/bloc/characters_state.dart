part of 'characters_bloc.dart';

@freezed
class CharactersState with _$CharactersState {
  const factory CharactersState.initial({
    required int currentPage,
    @Default([]) List<Character> characters,
  }) = Initial;
  const factory CharactersState.loading({
    required int currentPage,
    required List<Character> characters,
  }) = Loading;
  const factory CharactersState.loaded({
    required int currentPage,
    required List<Character> characters,
  }) = Loaded;
  const factory CharactersState.error({
    required int currentPage,
    required List<Character> characters,
    required String message,
  }) = Error;
}
