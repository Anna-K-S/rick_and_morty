// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterListImpl _$$CharacterListImplFromJson(Map<String, dynamic> json) =>
    _$CharacterListImpl(
      info: Info.fromJson(json['info'] as Map<String, dynamic>),
      results: (json['results'] as List<dynamic>)
          .map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CharacterListImplToJson(_$CharacterListImpl instance) =>
    <String, dynamic>{
      'info': instance.info,
      'results': instance.results,
    };
