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
    // преобразуем строки в int (id персонажей )
    return favoriteIds.map(int.parse).toList();
  }

  @override
  // если персонаж есть в избранном,то удалить, а иначе добавить
  Future<void> toggleFavorite(int characterId) async {
    final favoriteIds = prefs.getStringList(_favoritesKey) ?? [];
    // если id уже есть, то удаляем его
    if (favoriteIds.contains(characterId.toString())) {
      favoriteIds.remove(characterId.toString());

      // сохраняем обновлённый список
      await prefs.setStringList(_favoritesKey, favoriteIds);
      return;
    }

    favoriteIds.add(characterId.toString());
    await prefs.setStringList(_favoritesKey, favoriteIds);
  }

  @override
  // удалить персонажа из избранного по id
  Future<void> removeFavorite(int characterId) async {
    final favoriteIds = prefs.getStringList(_favoritesKey) ?? [];

    favoriteIds.remove(characterId.toString());
    await prefs.setStringList(_favoritesKey, favoriteIds);
  }
}
