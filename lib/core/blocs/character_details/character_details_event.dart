part of 'character_details_bloc.dart';

sealed class CharacterDetailsEvent extends Equatable {
  @override
  List<Object> get props => [];
}

final class FetchCharacterDetails extends CharacterDetailsEvent {
  FetchCharacterDetails(this.id);

  final int id;

  @override
  List<Object> get props => [id];
}
