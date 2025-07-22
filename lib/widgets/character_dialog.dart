import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rick_and_morty/bloc/favorites/favorites_bloc.dart';
import 'package:rick_and_morty/data/models/character.dart';

class CharacterDialog extends StatelessWidget {
  final Character character;
  final ValueChanged<bool> onFavoriteToggle;

  const CharacterDialog({
    super.key,
    required this.character,
    required this.onFavoriteToggle,
  });

  static void show(
    BuildContext context,
    Character character,
    ValueChanged<bool> onFavoriteToggle,
  ) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (_) {
        return BlocProvider.value(
          value: context.read<FavoritesBloc>(),
          child: CharacterDialog(
            character: character,
            onFavoriteToggle: onFavoriteToggle,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final isFavorite = context.select(
      (FavoritesBloc bloc) => switch (bloc.state) {
        FavoritesCharactersLoaded(:final favorites) =>
          favorites.contains(character.id),
        _ => false,
      },
    );

    return Dialog(
      backgroundColor: Colors.transparent,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.black54,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Center(
                      child: CachedNetworkImage(
                        imageUrl: character.image,
                        width: 250,
                        height: 250,
                        placeholder: (context, url) =>
                            CircularProgressIndicator(
                          color: Colors.yellow[700],
                          backgroundColor: Colors.green[900],
                        ),
                        errorWidget: (context, url, error) => const Icon(
                          Icons.error,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      character.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Status: ${character.status}\nSpecies: ${character.species}',
                      style: const TextStyle(color: Colors.white70),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 12),
                    IconButton(
                        icon: Icon(
                          isFavorite ? Icons.star : Icons.star_border_outlined,
                          color: Colors.yellow[700],
                        ),
                        onPressed: () {
                          onFavoriteToggle(!isFavorite);
                        }),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
