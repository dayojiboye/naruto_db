part of 'character_details_bloc.dart';

final class CharacterDetailsState extends Equatable {
  const CharacterDetailsState({
    this.status = ViewStatus.initial,
    this.character,
  });

  final ViewStatus status;
  final Character? character;

  bool get isCharacterEmpty => character == null;

  CharacterDetailsState copyWith({
    ViewStatus? status,
    Character? character,
  }) {
    return CharacterDetailsState(
      status: status ?? this.status,
      character: character ?? this.character,
    );
  }

  @override
  String toString() {
    return '''CharacterState { status: $status, characters: $character }''';
  }

  @override
  List<Object?> get props => [
        status,
        character,
      ];
}
