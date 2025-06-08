import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../bloc/characters_bloc.dart';
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

  void _onScroll() {
    final state = context.read<CharactersBloc>().state;
    if (state is Loaded && state.hasMore) {
      final position = _scrollController.position;
      const loadThreshold = 0.8;
      if (position.pixels >= position.maxScrollExtent * loadThreshold) {
        context.read<CharactersBloc>().add(const CharactersEvent.loadedMore());
      }
    }
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
      ),
      body: BlocBuilder<CharactersBloc, CharactersState>(
        builder: (context, state) {
          final isLoadingMore = state is Loading && state.characters.isNotEmpty;
          return switch (state) {
            Initial() => const Center(
                child: Text(
                  'Loading characters...',
                ),
              ),
            Loading(characters: final characters) => CharactersGrid(
                characters: characters,
                isLoading: isLoadingMore,
                scrollController: _scrollController,
              ),
            Loaded(characters: final characters) => CharactersGrid(
                characters: characters,
                isLoading: false,
                scrollController: _scrollController,
              ),
            Error(
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
}
