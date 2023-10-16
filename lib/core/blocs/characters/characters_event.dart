part of 'characters_bloc.dart';

sealed class CharactersEvent extends Equatable {
  @override
  List<Object> get props => [];
}

final class FetchCharacters extends CharactersEvent {}

final class SearchCharacter extends CharactersEvent {
  SearchCharacter(this.name);

  final String name;

  @override
  List<Object> get props => [name];
}
