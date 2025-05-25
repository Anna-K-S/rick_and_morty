part of 'characters_bloc.dart';

@freezed
sealed class CharactersEvent with _$CharactersEvent {
  const factory CharactersEvent.started() = Started;
  const factory CharactersEvent.loadMore() = LoadMore;
  const factory CharactersEvent.refresh() = Refresh;
}
