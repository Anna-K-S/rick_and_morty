import 'package:freezed_annotation/freezed_annotation.dart';
part 'character_filter.freezed.dart';
part 'character_filter.g.dart';

enum SortBy {
  name,
  status,
  species,
}

@freezed
class CharacterFilter with _$CharacterFilter {
  const factory CharacterFilter({
    String? name,
    String? status,
    String? species,
    SortBy? sortBy,
  }) = _CharacterFilter;

  factory CharacterFilter.fromJson(Map<String, dynamic> json) =>
      _$CharacterFilterFromJson(json);
}
