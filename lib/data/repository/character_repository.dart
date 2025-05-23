import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/data/models/character_list.dart';
import 'package:rick_and_morty/service/api.dart';

abstract interface class ICharacterRepository {
  Future<CharacterList> getAll({int? page});
  Future<Character> getById(int id);
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
}
