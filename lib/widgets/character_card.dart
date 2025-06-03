import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rick_and_morty/data/models/character.dart';

class CharacterCard extends StatelessWidget {
  final Character character;
  final VoidCallback onTap;

  const CharacterCard(
      {super.key, required this.character, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: Colors.grey.shade500, width: 1.5),
        ),
        clipBehavior: Clip.antiAlias,
        child: Stack(
          fit: StackFit.expand,
          children: [
            CachedNetworkImage(
              imageUrl: character.image,
              fit: BoxFit.cover,
              imageBuilder: (context, imageProvider) {
                return Image(image: imageProvider);
              },
              fadeInDuration: const Duration(microseconds: 300),
              placeholder: (context, url) {
                return Center(
                  child: CircularProgressIndicator(
                    color: Colors.yellow[700],
                  ),
                );
              },
              errorWidget: (context, url, error) {
                return const Center(
                  child: Icon(
                    Icons.error,
                    color: Colors.red,
                  ),
                );
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.black54,
                padding: const EdgeInsets.all(8),
                child: Text(
                  character.name,
                  style: const TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
