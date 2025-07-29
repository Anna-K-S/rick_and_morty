import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/data/models/character_list.dart';
import 'package:rick_and_morty/service/api.dart';

abstract interface class ICharacterRepository {
  Future<CharacterList> getAll({int? page});
  Future<Character> getById(int id);
  Future<List<Character>> getByIds(Set<int> ids);
}

class CharacterRepository implements ICharacterRepository {
  final Api _api;

  CharacterRepository(this._api);

  @override
  Future<CharacterList> getAll({int? page}) async {
    return await _api.getAllCharacters(page: page ?? 1);
  }

  @override
  Future<Character> getById(int id) async {
    return await _api.getCharacterById(id);
  }

  @override
  Future<List<Character>> getByIds(Set<int> ids) async {
    List<Character> matched = [];

    int currentPage = 1;
    bool hasMore = true;

    if (hasMore) {
      final result = await _api.getAllCharacters(page: currentPage);

      final pageMatches = result.results
          .where((character) => ids.contains(character.id))
          .toList();
      matched.addAll(pageMatches);

      hasMore = result.results.length == 20;
      currentPage++;
    }

    return matched;
  }
}
