import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/data/models/character_filter.dart';
import 'package:rick_and_morty/data/models/character_list.dart';
import 'package:rick_and_morty/data/models/info.dart';
import 'package:rick_and_morty/service/api.dart';

abstract interface class ICharacterRepository {
  Future<CharacterList> getAll({int? page});
  Future<Character> getById(int id);
  Future<List<Character>> getByIds(List<int> ids);
  Future<CharacterList> getFilter(CharacterFilter filter);
}

class CharacterRepository implements ICharacterRepository {
  final Api _api;

  CharacterRepository(this._api);

  @override
  Future<CharacterList> getAll({int? page}) async {
    List<Character> allCharacters = [];
    Info? lastInfo;

    int currentPage = page ?? 1;

    while (true) {
      final characterList = await _api.getAllCharacters(page: currentPage);
      allCharacters.addAll(characterList.results);
      lastInfo = characterList.info;

      if (characterList.info.next == null) {
        break;
      }
      currentPage++;
    }

    return CharacterList(
      info: lastInfo,
      results: allCharacters,
    );
  }

  @override
  Future<Character> getById(int id) async {
    return await _api.getCharacterById(id);
  }

  @override
  Future<List<Character>> getByIds(List<int> ids) async {
    if (ids.isEmpty) return [];

    final response = await _api.getCharactersByIds(ids.toString());

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

  @override
  Future<CharacterList> getFilter(CharacterFilter filter) async {
    return await _api.getFilteredCharacters(
      name: filter.name,
      species: filter.species,
      status: filter.status,
    );
  }
}
