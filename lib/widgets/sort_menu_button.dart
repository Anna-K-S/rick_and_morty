import 'package:flutter/material.dart';
import 'package:rick_and_morty/data/models/character_filter.dart';

class SortMenuButton extends StatelessWidget {
  final CharacterFilter currentFilter;
  final void Function(CharacterFilter) onSelected;

  const SortMenuButton({
    super.key,
    required this.currentFilter,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.sort),
      onPressed: () => _showSortMenu(context),
    );
  }

  void _showSortMenu(BuildContext context) {
    final overlay = Overlay.of(context).context.findRenderObject();

    if (overlay is RenderBox) {
      final position = RelativeRect.fromLTRB(
        300,
        100,
        overlay.size.width,
        overlay.size.height,
      );

      showMenu<CharacterFilter>(
        context: context,
        position: position,
        items: [
          PopupMenuItem(
            value: currentFilter.copyWith(sortBy: SortBy.name),
            child: const Text('Sort by name'),
          ),
          PopupMenuItem(
            value: currentFilter.copyWith(sortBy: SortBy.status),
            child: const Text('Sort by status'),
          ),
          PopupMenuItem(
            value: currentFilter.copyWith(sortBy: SortBy.species),
            child: const Text('Sort by species'),
          ),
        ],
        color: Colors.green[900],
        shadowColor: Colors.white,
      ).then((filter) {
        if (filter != null && context.mounted) {
          onSelected(filter);
        }
      });
    }
  }
}
