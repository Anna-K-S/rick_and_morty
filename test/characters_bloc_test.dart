import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:rick_and_morty/bloc/characters_bloc.dart';
import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/data/models/character_list.dart';
import 'package:rick_and_morty/data/models/info.dart';

import 'mock_generator.mocks.dart';

void main() {
  late CharactersBloc charactersBloc;
  late MockICharacterRepository mockRepository;

  final testCharacters = [
    Character(
      id: 1,
      name: 'Rick Sanchez',
      status: 'Alive',
      species: 'Human',
      image: 'https://example.com/rick.png',
    ),
    Character(
      id: 2,
      name: 'Morty Smith',
      status: 'Alive',
      species: 'Human',
      image: 'https://example.com/morty.png',
    ),
  ];
  final testInfo = Info(
    count: 2,
    pages: 1,
  );

  final testCharacterList =
      CharacterList(results: testCharacters, info: testInfo);

  setUp(() {
    mockRepository = MockICharacterRepository();
    charactersBloc = CharactersBloc(mockRepository);
  });

  tearDown(() {
    charactersBloc.close();
  });

  group('CharactersBloc', () {
    blocTest<CharactersBloc, CharactersState>(
      'emits [loading, loaded] when Started is added',
      build: () {
        when(mockRepository.getAll(page: 1))
            .thenAnswer((_) async => testCharacterList);
        return charactersBloc;
      },
      act: (bloc) => bloc.add(const CharactersEvent.started()),
      expect: () => [
        CharactersState.loading(currentPage: 1, characters: []),
        CharactersState.loaded(currentPage: 1, characters: testCharacters),
      ],
    );

    blocTest<CharactersBloc, CharactersState>(
      'emits [loading, loaded] with more characters when LoadedMore is added',
      build: () {
        when(mockRepository.getAll(page: 2))
            .thenAnswer((_) async => testCharacterList);
        return charactersBloc;
      },
      seed: () => CharactersState.loaded(
        currentPage: 1,
        characters: testCharacters,
      ),
      act: (bloc) => bloc.add(const CharactersEvent.loadedMore()),
      expect: () => [
        CharactersState.loading(currentPage: 2, characters: testCharacters),
        CharactersState.loaded(
          currentPage: 2,
          characters: [...testCharacters, ...testCharacters],
        ),
      ],
    );

    blocTest<CharactersBloc, CharactersState>(
      'emits [loading, loaded] when Refreshed is added',
      build: () {
        when(mockRepository.getAll(page: 1))
            .thenAnswer((_) async => testCharacterList);
        return charactersBloc;
      },
      seed: () => CharactersState.loaded(
        currentPage: 1,
        characters: testCharacters,
      ),
      act: (bloc) => bloc.add(const CharactersEvent.refreshed()),
      expect: () => [
        CharactersState.loading(currentPage: 1, characters: testCharacters),
        CharactersState.loaded(currentPage: 1, characters: testCharacters),
      ],
    );

    blocTest<CharactersBloc, CharactersState>(
      'emits [loading, error] when Started throws',
      build: () {
        when(mockRepository.getAll(page: 1)).thenThrow(Exception('API Error'));
        return charactersBloc;
      },
      act: (bloc) => bloc.add(const CharactersEvent.started()),
      expect: () => [
        CharactersState.loading(
            currentPage: 1, characters: charactersBloc.state.characters),
        CharactersState.error(
          currentPage: 1,
          characters: [],
          message: 'Exception: API Error',
        ),
      ],
    );
  });
}
