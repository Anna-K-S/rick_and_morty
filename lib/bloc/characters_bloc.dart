import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/data/repository/character_repository.dart';

part 'characters_event.dart';
part 'characters_state.dart';
part 'characters_bloc.freezed.dart';

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final ICharacterRepository _repository;

  CharactersBloc(this._repository)
      : super(const CharactersState.initial(currentPage: 1)) {
    on<CharactersEvent>(
      (event, emit) => switch (event) {
        Started() => _onStarted(emit),
        LoadMore() => _onLoadMore(emit),
        Refresh() => _onRefresh(emit),
      },
      transformer: sequential(),
    );
  }
  Future<void> _onStarted(Emitter<CharactersState> emit) async {
    emit(CharactersState.loading(
      characters: state.characters,
      currentPage: state.currentPage,
    ));
    try {
      final characters = await _repository.getAll(page: state.currentPage);

      emit(CharactersState.loaded(
        characters: characters.results,
        currentPage: state.currentPage,
      ));
    } catch (e) {
      emit(
        CharactersState.error(
          message: e.toString(),
          currentPage: state.currentPage,
          characters: state.characters,
        ),
      );
    }
  }

  Future<void> _onLoadMore(Emitter<CharactersState> emit) async {
    final currentState = state;
    if (currentState is! Loaded) return;
    emit(CharactersState.loading(
        characters: currentState.characters, currentPage: state.currentPage));
    try {
      final newCharacters = await _repository.getAll(page: state.currentPage);

      if (newCharacters.results.isEmpty) {
        emit(CharactersState.loaded(
          characters: currentState.characters,
          currentPage: state.currentPage,
        ));

        return;
      }

      final updatedCharacters = [
        ...currentState.characters,
        ...newCharacters.results
      ];

      emit(CharactersState.loaded(
        characters: updatedCharacters,
        currentPage: state.currentPage + 1,
      ));
      currentState;
    } catch (e) {
      emit(
        CharactersState.error(
          message: e.toString(),
          characters: currentState.characters,
          currentPage: state.currentPage,
        ),
      );
    }
  }

  Future<void> _onRefresh(Emitter<CharactersState> emit) async {
    emit(CharactersState.loading(
      currentPage: state.currentPage,
      characters: state.characters,
    ));
    try {
      final characters = await _repository.getAll(page: state.currentPage);
      emit(CharactersState.loaded(
        currentPage: state.currentPage + 1,
        characters: characters.results,
      ));
    } catch (e) {
      emit(
        CharactersState.error(
          message: e.toString(),
          characters: state.characters,
          currentPage: state.currentPage,
        ),
      );
    }
  }
}
