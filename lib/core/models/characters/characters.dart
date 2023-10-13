import 'package:freezed_annotation/freezed_annotation.dart';

import 'character.dart';

part 'characters.freezed.dart';
part 'characters.g.dart';

@freezed
class Characters with _$Characters {
  factory Characters({
    required List<Character> characters,
    required int currentPage,
    required int pageSize,
    required int totalCharacters,
  }) = _Characters;

  factory Characters.fromJson(Map<String, dynamic> json) =>
      _$CharactersFromJson(json);
}
