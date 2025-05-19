part of 'characters_bloc.dart';

@freezed
class CharactersState with _$CharactersState {
  const factory CharactersState.initial() = Initial;
  const factory CharactersState.loading(CharacterResponse? characters) =
      Loading;
  const factory CharactersState.loaded(CharacterResponse characters) = Loaded;
  const factory CharactersState.error(String message) = Error;
}
