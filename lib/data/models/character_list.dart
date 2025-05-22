import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rick_and_morty/data/models/character.dart';
import 'package:rick_and_morty/data/models/info.dart';

part 'character_list.freezed.dart';
part 'character_list.g.dart';

@freezed
class CharacterList with _$CharacterList {
  const factory CharacterList({
    required Info info,
    required List<Character> results,
  }) = _CharacterList;

  factory CharacterList.fromJson(Map<String, dynamic> json) =>
      _$CharacterListFromJson(json);
}
