import 'package:rick_and_morty/data/models/character.dart';
import '../service/api.dart';

abstract interface class ICharacterRepository {
  Future<List<Character>> getAll(); 
  Future <Character> getById(int id);
}

class CharacterRepository implements ICharacterRepository {
  final Api _api;
 
  CharacterRepository(this._api);

  @override
  Future<List<Character>> getAll() async {
    return await _api.getAllCharacters();
  }

  @override
  Future<Character> getById(int id) async {
    return await _api.getCharacterById(id);
  }
}  