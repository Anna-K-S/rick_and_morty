part of 'characters_bloc.dart';

@freezed
sealed class CharactersEvent with _$CharactersEvent {
  const factory CharactersEvent.started() = Started;
  const factory CharactersEvent.loadedMore() = LoadedMore;
  const factory CharactersEvent.refreshed() = Refreshed;
}
