// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_filter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterFilterImpl _$$CharacterFilterImplFromJson(
        Map<String, dynamic> json) =>
    _$CharacterFilterImpl(
      name: json['name'] as String?,
      status: json['status'] as String?,
      species: json['species'] as String?,
      sortBy: $enumDecodeNullable(_$SortByEnumMap, json['sortBy']),
    );

Map<String, dynamic> _$$CharacterFilterImplToJson(
        _$CharacterFilterImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'status': instance.status,
      'species': instance.species,
      'sortBy': _$SortByEnumMap[instance.sortBy],
    };

const _$SortByEnumMap = {
  SortBy.name: 'name',
  SortBy.status: 'status',
  SortBy.species: 'species',
};
