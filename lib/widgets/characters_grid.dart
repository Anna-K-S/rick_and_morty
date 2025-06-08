import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/bloc/characters_bloc.dart';
import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/widgets/character_card.dart';
import 'package:rick_and_morty/widgets/character_dialog.dart';

class CharactersGrid extends StatelessWidget {
  final List<Character> characters;
  final String? errorMessage;
  final ScrollController scrollController;
  final bool isLoading;

  const CharactersGrid({
    super.key,
    required this.characters,
    required this.scrollController,
    required this.isLoading,
    this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        // при свайпе вниз обновляем данные
        context.read<CharactersBloc>().add(
              const CharactersEvent.refreshed(),
            );
        // await context.read<CharactersBloc>().stream.firstWhere(
        //       (state) => state is! Loading,
        //     );
      },
      color: Colors.yellow[700],
      backgroundColor: Colors.green[900],
      child: CustomScrollView(
        controller: scrollController,
        slivers: [
          if (errorMessage != null)
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  errorMessage!,
                  style: const TextStyle(color: Colors.red),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          if (characters.isEmpty && !isLoading)
            // если нет персонажей и не идёт загрузка — показываем сообщение
            const SliverFillRemaining(
              child: Center(
                child: Text('No characters found'),
              ),
            ),
          if (characters.isNotEmpty)
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final character = characters[index];
                    return CharacterCard(
                      character: character,
                      onTap: () => CharacterDialog.show(
                        context,
                        character,
                      ),
                    );
                  },
                  childCount: characters.length,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                  childAspectRatio: 3 / 4,
                ),
              ),
            ),
          if (isLoading && characters.isNotEmpty)
            const SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 24),
                child: Center(
                  child: CircularProgressIndicator(color: Colors.yellow),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
