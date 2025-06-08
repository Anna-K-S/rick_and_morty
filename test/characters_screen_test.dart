import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rick_and_morty/bloc/characters_bloc.dart';
import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/screens/characters_screen.dart';
import 'package:rick_and_morty/widgets/character_dialog.dart';

class MockCharactersBloc extends MockBloc<CharactersEvent, CharactersState>
    implements CharactersBloc {}

void main() {
  late MockCharactersBloc mockBloc;

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

  setUpAll(() {
    registerFallbackValue(LoadedMore());
  });

  setUp(() {
    mockBloc = MockCharactersBloc();
  });

  Widget buildTestableWidget() {
    return MaterialApp(
      home: BlocProvider<CharactersBloc>.value(
        value: mockBloc,
        child: const CharactersScreen(),
      ),
    );
  }

  group('CharactersScreen', () {
    testWidgets('shows loading text on Initial state', (tester) async {
      whenListen(mockBloc, Stream<CharactersState>.empty(),
          initialState: const CharactersState.initial(currentPage: 1));
      await tester.pumpWidget(buildTestableWidget());
      await tester.pump();

      expect(find.text('Loading characters...'), findsOneWidget);
    });

    testWidgets('shows characters grid on loaded state', (tester) async {
      when(() => mockBloc.state).thenReturn(
        CharactersState.loaded(
          currentPage: 1,
          characters: testCharacters,
        ),
      );
      whenListen(
        mockBloc,
        Stream.value(CharactersState.loaded(
          currentPage: 1,
          characters: testCharacters,
        )),
      );

      await tester.pumpWidget(buildTestableWidget());
      await tester.pump();
      expect(find.text('Rick Sanchez'), findsOneWidget);
      expect(find.text('Morty Smith'), findsOneWidget);
    });

    testWidgets('shows error message on Error state', (tester) async {
      when(() => mockBloc.state).thenReturn(
        const CharactersState.error(
          currentPage: 1,
          characters: [],
          message: 'Something went wrong',
        ),
      );
      whenListen(
        mockBloc,
        Stream.value(
          const CharactersState.error(
            currentPage: 1,
            characters: [],
            message: 'Something went wrong',
          ),
        ),
      );

      await tester.pumpWidget(buildTestableWidget());
      await tester.pump();

      expect(find.text('Something went wrong'), findsOneWidget);
    });

    testWidgets('shows "No characters found" when list is empty',
        (tester) async {
      when(() => mockBloc.state).thenReturn(
        CharactersState.loaded(
          currentPage: 1,
          characters: [],
        ),
      );
      whenListen(
        mockBloc,
        Stream.value(CharactersState.loaded(
          currentPage: 1,
          characters: [],
        )),
      );

      await tester.pumpWidget(buildTestableWidget());
      await tester.pump();

      expect(find.text('No characters found'), findsOneWidget);
    });

    testWidgets('triggers loadedMore when scrolled to bottom', (tester) async {
      final characters = List.generate(
        10,
        (i) => Character(
          id: i,
          name: 'Char $i',
          image: 'url',
          status: 'Al',
          species: 'Human',
        ),
      );

      when(() => mockBloc.state).thenReturn(
        Loaded(
          characters: characters,
          hasMore: true,
          currentPage: 1,
        ),
      );
      whenListen(
        mockBloc,
        Stream.value(
          Loaded(characters: characters, hasMore: true, currentPage: 1),
        ),
      );

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider<CharactersBloc>.value(
            value: mockBloc,
            child: const CharactersScreen(),
          ),
        ),
      );

      await tester.pump(const Duration(milliseconds: 500));

      final scrollView = find.byType(CustomScrollView);

      await tester.drag(
        scrollView,
        Offset(0, -100000),
      );
      await tester.pump();

      verify(() => mockBloc.add(any(that: isA<LoadedMore>()))).called(1);
    });

    testWidgets('shows character dialog on card tap', (tester) async {
      when(() => mockBloc.state).thenReturn(
        CharactersState.loaded(
          currentPage: 1,
          characters: [testCharacters[0]],
        ),
      );
      whenListen(
        mockBloc,
        Stream.value(CharactersState.loaded(
          currentPage: 1,
          characters: [testCharacters[0]],
        )),
      );

      await tester.pumpWidget(buildTestableWidget());
      await tester.pump();

      await tester.tap(find.text('Rick Sanchez'));
      await tester.pump(const Duration(milliseconds: 300));

      expect(find.byType(CharacterDialog), findsOneWidget);
      expect(find.textContaining('Status: Alive'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.star));
      await tester.pump(const Duration(milliseconds: 300));
      expect(find.byType(CharacterDialog), findsNothing);
    });
  });
}
