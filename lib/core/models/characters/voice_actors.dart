import 'package:freezed_annotation/freezed_annotation.dart';

part 'voice_actors.freezed.dart';
part 'voice_actors.g.dart';

@freezed
class VoiceActors with _$VoiceActors {
  factory VoiceActors({
    String? japanese,
    String? english,
  }) = _VoiceActors;

  factory VoiceActors.fromJson(Map<String, dynamic> json) =>
      _$VoiceActorsFromJson(json);
}
