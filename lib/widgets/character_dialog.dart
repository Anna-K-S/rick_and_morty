import 'dart:ui';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/data/models/character.dart';

class CharacterDialog extends StatefulWidget {
  final Character character;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;

  const CharacterDialog({
    super.key,
    required this.character,
    required this.isFavorite,
    required this.onFavoriteToggle,
  });

  static void show(
    BuildContext context,
    Character character,
    bool isFavorite,
    VoidCallback onFavoriteToggle,
  ) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => CharacterDialog(
        character: character,
        isFavorite: isFavorite,
        onFavoriteToggle: onFavoriteToggle,
      ),
    );
  }

  @override
  State<CharacterDialog> createState() => _CharacterDialogState();
}

class _CharacterDialogState extends State<CharacterDialog> {
  late bool _isFavorite;

  @override
  void initState() {
    super.initState();
    _isFavorite = widget.isFavorite;
  }

  void _toggleFavorite() {
    setState(() {
      _isFavorite = !_isFavorite;
    });
    widget.onFavoriteToggle();
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
                        imageUrl: widget.character.image,
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
                      widget.character.name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Status: ${widget.character.status}\nSpecies: ${widget.character.species}',
                      style: const TextStyle(color: Colors.white70),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 12),
                    IconButton(
                        icon: Icon(
                          _isFavorite ? Icons.star : Icons.star_border_outlined,
                          color: Colors.yellow[700],
                        ),
                        onPressed: _toggleFavorite),
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
