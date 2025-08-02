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
    if (ids.isEmpty) return [];

    final response = await _api.getCharactersByIds(ids.join(','));

    if (ids.length == 1) {
      return [Character.fromJson(response)];
    }
    if (ids.length > 1) {
      return (response as List)
          .map((json) => Character.fromJson(json))
          .toList();
    }
    throw Exception('Unexpected response format for character IDs: $ids');
  }
}
