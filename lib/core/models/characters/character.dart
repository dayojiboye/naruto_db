import 'package:freezed_annotation/freezed_annotation.dart';

import 'debut.dart';
import 'family.dart';
// import 'personal.dart';
import 'rank.dart';
import 'voice_actors.dart';

part 'character.freezed.dart';
part 'character.g.dart';

@freezed
class Character with _$Character {
  factory Character({
    int? id,
    String? name,
    List<String>? images,
    Debut? debut,
    List<String>? jutsu,
    // Personal? personal,
    dynamic personal,
    List<String>? uniqueTraits,
    Family? family,
    List<String>? natureType,
    Rank? rank,
    VoiceActors? voiceActors,
    List<String>? tools,
  }) = _Character;

  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);
}
