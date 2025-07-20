import 'package:shared_preferences/shared_preferences.dart';

abstract interface class IFavoritesRepository {
  Future<List<int>> getFavoriteIds();
  Future<void> toggleFavorite(int characterId);
  Future<void> removeFavorite(int characterId);
}

class FavoritesRepository implements IFavoritesRepository {
  final String _favoritesKey = 'favorite_characters';
  final SharedPreferences prefs;

  FavoritesRepository(this.prefs);

  @override
  // список избранных ID
  Future<List<int>> getFavoriteIds() async {
    // получаем список строк по ключу, если null — возвращаем пустой список
    final favoriteIds = prefs.getStringList(_favoritesKey) ?? [];
    return favoriteIds.map(int.parse).toList();
  }

  @override
  Future<void> toggleFavorite(int characterId) async {
    final favoriteIds = prefs.getStringList(_favoritesKey) ?? [];

    if (favoriteIds.contains(characterId.toString())) {
      favoriteIds.remove(characterId.toString());
      await prefs.setStringList(_favoritesKey, favoriteIds);
      return;
    }

    favoriteIds.add(characterId.toString());
    await prefs.setStringList(_favoritesKey, favoriteIds);
  }

  @override
  Future<void> removeFavorite(int characterId) async {
    final favoriteIds = prefs.getStringList(_favoritesKey) ?? [];

    favoriteIds.remove(characterId.toString());
    await prefs.setStringList(_favoritesKey, favoriteIds);
  }
}
