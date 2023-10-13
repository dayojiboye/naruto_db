// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rank.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RankImpl _$$RankImplFromJson(Map<String, dynamic> json) => _$RankImpl(
      ninjaRank: json['ninjaRank'] == null
          ? null
          : NinjaRank.fromJson(json['ninjaRank'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RankImplToJson(_$RankImpl instance) =>
    <String, dynamic>{
      'ninjaRank': instance.ninjaRank,
    };
