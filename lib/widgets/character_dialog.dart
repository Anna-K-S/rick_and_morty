import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/data/models/character.dart';

class CharacterDialog extends StatelessWidget {
  final Character character;

  const CharacterDialog({super.key, required this.character});

  static void show(BuildContext context, Character character) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => CharacterDialog(character: character),
    );
  }

  @override
  Widget build(BuildContext context) {
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
                        // character.isFavorite
                        Icons.star,
                        // : Icons.star_border,
                        color: Colors.yellow[700],
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
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
