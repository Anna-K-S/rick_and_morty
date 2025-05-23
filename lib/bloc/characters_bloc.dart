import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/data/repository/character_repository.dart';

part 'characters_event.dart';
part 'characters_state.dart';
part 'characters_bloc.freezed.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final ICharacterRepository repository;

  int _currentPage = 1;

  CharactersBloc(this.repository) : super(const CharactersState.initial()) {
    on<Started>(_onStarted, transformer: sequential());
    on<LoadMore>(_onLoadMore, transformer: sequential());
    on<Refresh>(_onRefresh, transformer: sequential());
  }

  Future<void> _onStarted(Started event, Emitter<CharactersState> emit) async {
    emit(const CharactersState.loading(null));
    try {
      final characters = await repository.getAll(page: _currentPage);

      emit(CharactersState.loaded(characters.results));

      _currentPage = 1;
    } catch (e) {
      emit(
        CharactersState.error(e.toString()),
      );
    }
  }

  Future<void> _onLoadMore(
      LoadMore event, Emitter<CharactersState> emit) async {
    if (state is! Loaded) return;
    final currentState = state as Loaded;

    emit(CharactersState.loading(currentState.characters));
    try {
      _currentPage++;

      final newCharacters = await repository.getAll(page: _currentPage);

      if (newCharacters.results.isEmpty) {
        emit(CharactersState.loaded(currentState.characters));
        _currentPage--;
        return;
      }

      final updatedCharacters = [
        ...currentState.characters,
        ...newCharacters.results
      ];

      emit(CharactersState.loaded(updatedCharacters));
    } catch (e) {
      emit(
        CharactersState.error(e.toString()),
      );
    }
  }

  Future<void> _onRefresh(Refresh event, Emitter<CharactersState> emit) async {
    emit(const CharactersState.loading(null));
    try {
      _currentPage = 1;
      final characters = await repository.getAll(page: _currentPage);
      emit(CharactersState.loaded(characters.results));
    } catch (e) {
      emit(
        CharactersState.error(e.toString()),
      );
    }
  }
}
