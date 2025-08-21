import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/widgets/sort_mtnu_button.dart';
import '../bloc/characters/characters_bloc.dart';
import '../../widgets/characters_grid.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rick and Morty'),
        backgroundColor: Colors.green[900],
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
          ),
          BlocBuilder<CharactersBloc, CharactersState>(
              builder: (context, state) {
            final filter = state.filter;

            return SortMenuButton(
              currentFilter: filter,
              onSelected: (newFilter) {
                context.read<CharactersBloc>().add(
                      CharactersEvent.filterChanged(newFilter),
                    );
              },
            );
          }),
        ],
      ),
      body: BlocBuilder<CharactersBloc, CharactersState>(
        builder: (context, state) {
          final isLoadingMore =
              state is CharactersLoading && state.characters.isNotEmpty;
          return switch (state) {
            CharactersInitial() => const Center(
                child: Text(
                  'Loading characters...',
                ),
              ),
            CharactersLoading(characters: final characters) => CharactersGrid(
                characters: characters,
                isLoading: isLoadingMore,
                scrollController: _scrollController,
              ),
            CharactersLoaded(characters: final characters) => CharactersGrid(
                characters: characters,
                isLoading: false,
                scrollController: _scrollController,
              ),
            CharactersError(
              message: final message,
              characters: final characters,
            ) =>
              CharactersGrid(
                characters: characters,
                isLoading: false,
                scrollController: _scrollController,
                errorMessage: message,
              ),
          };
        },
      ),
    );
  }

  void _onScroll() {
    final state = context.read<CharactersBloc>().state;
    if (state is CharactersLoaded && state.hasMore) {
      final position = _scrollController.position;
      const loadThreshold = 0.8;
      if (position.pixels >= position.maxScrollExtent * loadThreshold) {
        context.read<CharactersBloc>().add(const CharactersEvent.loadedMore());
      }
    }
  }
}
