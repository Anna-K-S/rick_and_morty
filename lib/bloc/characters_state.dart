part of 'characters_bloc.dart';

@freezed
class CharactersState with _$CharactersState {
  const factory CharactersState.initial() = Initial;
  const factory CharactersState.loading(List<Character>? characters) = Loading;
  const factory CharactersState.loaded(List<Character> characters) = Loaded;
  const factory CharactersState.error(String message) = Error;
}
