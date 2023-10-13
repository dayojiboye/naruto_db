// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'characters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharactersImpl _$$CharactersImplFromJson(Map<String, dynamic> json) =>
    _$CharactersImpl(
      characters: (json['characters'] as List<dynamic>)
          .map((e) => Character.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentPage: json['currentPage'] as int,
      pageSize: json['pageSize'] as int,
      totalCharacters: json['totalCharacters'] as int,
    );

Map<String, dynamic> _$$CharactersImplToJson(_$CharactersImpl instance) =>
    <String, dynamic>{
      'characters': instance.characters,
      'currentPage': instance.currentPage,
      'pageSize': instance.pageSize,
      'totalCharacters': instance.totalCharacters,
    };
