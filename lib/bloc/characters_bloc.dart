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
        LoadedMore() => _onLoadedMore(emit),
        Refreshed() => _onRefreshed(emit),
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
        hasMore: characters.results.isNotEmpty,
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

  Future<void> _onLoadedMore(Emitter<CharactersState> emit) async {
    final currentState = state;
    if (currentState is! Loaded || !currentState.hasMore) return;

    final nextPage = currentState.currentPage + 1;

    emit(CharactersState.loading(
      characters: currentState.characters,
      currentPage: nextPage,
    ));

    await Future.delayed(
      const Duration(milliseconds: 300),
    );

    try {
      final newCharacters = await _repository.getAll(page: nextPage);

      final updatedCharacters = [
        ...currentState.characters,
        ...newCharacters.results,
      ];

      emit(CharactersState.loaded(
        characters: updatedCharacters,
        currentPage: nextPage,
        hasMore: newCharacters.results.isNotEmpty,
      ));
    } catch (e) {
      emit(CharactersState.error(
        message: e.toString(),
        characters: currentState.characters,
        currentPage: currentState.currentPage,
      ));
    }
  }

  Future<void> _onRefreshed(Emitter<CharactersState> emit) async {
    emit(CharactersState.loading(
      currentPage: state.currentPage,
      characters: state.characters,
    ));
    try {
      final characters = await _repository.getAll(page: state.currentPage);
      emit(CharactersState.loaded(
        currentPage: state.currentPage,
        characters: characters.results,
        hasMore: characters.results.isNotEmpty,
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
