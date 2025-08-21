import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/data/models/character_filter.dart';
import 'package:rick_and_morty/data/repository/character_repository.dart';
import 'package:rick_and_morty/widgets/sort_mtnu_button.dart';
import '../../bloc/favorites/favorites_bloc.dart';
import '../../widgets/characters_grid.dart';

// Экран для отображения избранных персонажей
class FavoritesCharactersScreen extends StatefulWidget {
  const FavoritesCharactersScreen({super.key});

  @override
  State<FavoritesCharactersScreen> createState() =>
      _FavoritesCharactersScreenState();
}

class _FavoritesCharactersScreenState extends State<FavoritesCharactersScreen> {
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
        backgroundColor: Colors.green[900],
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
          ),
        ],
      ),
      body: BlocBuilder<FavoritesBloc, FavoritesCharactersState>(
        builder: (context, state) {
          final favoriteIds = switch (state) {
            FavoritesCharactersLoaded(:final favorites) => favorites,
            FavoritesCharactersLoading(:final favorites) => favorites,
            FavoritesCharactersError(:final favorites) => favorites,
            FavoritesCharactersInitial() => const <int>{},
          };

          if (state is FavoritesCharactersLoading && favoriteIds.isEmpty) {
            return Center(
              child: Lottie.asset(
                'assets/the_morty_dance_loader.json',
                height: 300,
                width: 300,
                repeat: true,
              ),
            );
          }
          if (favoriteIds.isEmpty) {
            return Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 16,
                children: [
                  Lottie.asset(
                    'assets/morty_cry.json',
                    height: 250,
                    width: 250,
                    repeat: true,
                  ),
                  Text(
                    'Your favorites list is empty',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            );
          }
          return FutureBuilder<List<Character>>(
            future: context
                .read<ICharacterRepository>()
                .getByIds(favoriteIds.toList()),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: Lottie.asset(
                    'assets/rick.json',
                    height: 300,
                    width: 300,
                    repeat: true,
                  ),
                );
              }

              if (snapshot.hasError) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {
                        context
                            .read<FavoritesBloc>()
                            .add(const CharacterFavoriteLoaded());
                      },
                      child: const Text('Try again'),
                    ),
                  ],
                );
              }

              final characters = snapshot.data ?? [];
              return CharactersGrid(
                characters: characters,
                isLoading: false,
                scrollController: _scrollController,
              );
            },
          );
        },
      ),
    );
  }
}
