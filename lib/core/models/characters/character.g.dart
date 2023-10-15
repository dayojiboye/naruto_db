// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CharacterImpl _$$CharacterImplFromJson(Map<String, dynamic> json) =>
    _$CharacterImpl(
      id: json['id'] as int?,
      name: json['name'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      debut: json['debut'] == null
          ? null
          : Debut.fromJson(json['debut'] as Map<String, dynamic>),
      jutsu:
          (json['jutsu'] as List<dynamic>?)?.map((e) => e as String).toList(),
      personal: json['personal'] == null ? null : json['personal'] as dynamic,
      uniqueTraits: (json['uniqueTraits'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      family: json['family'] == null
          ? null
          : Family.fromJson(json['family'] as Map<String, dynamic>),
      natureType: (json['natureType'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      rank: json['rank'] == null
          ? null
          : Rank.fromJson(json['rank'] as Map<String, dynamic>),
      voiceActors: json['voiceActors'] == null
          ? null
          : VoiceActors.fromJson(json['voiceActors'] as Map<String, dynamic>),
      tools:
          (json['tools'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$CharacterImplToJson(_$CharacterImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'images': instance.images,
      'debut': instance.debut,
      'jutsu': instance.jutsu,
      'personal': instance.personal,
      'uniqueTraits': instance.uniqueTraits,
      'family': instance.family,
      'natureType': instance.natureType,
      'rank': instance.rank,
      'voiceActors': instance.voiceActors,
      'tools': instance.tools,
    };
