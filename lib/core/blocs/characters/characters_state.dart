part of 'characters_bloc.dart';

final class CharactersState extends Equatable {
  const CharactersState({
    this.status = ViewStatus.initial,
    this.characters = const <Character>[],
    this.hasReachedMax = false,
    this.currentPage = 0,
    this.isLoadingMore = false,
    this.errorMsg = "",
  });

  final ViewStatus status;
  final List<Character> characters;
  final bool hasReachedMax;
  final int currentPage;
  final bool isLoadingMore;
  final String errorMsg;

  CharactersState copyWith({
    ViewStatus? status,
    List<Character>? characters,
    bool? hasReachedMax,
    int? currentPage,
    bool? isLoadingMore,
    String? errorMsg,
  }) {
    return CharactersState(
      status: status ?? this.status,
      characters: characters ?? this.characters,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
      currentPage: currentPage ?? this.currentPage,
      isLoadingMore: isLoadingMore ?? this.isLoadingMore,
      errorMsg: errorMsg ?? this.errorMsg,
    );
  }

  @override
  String toString() {
    return '''CharactersState { currentPage: $currentPage, status: $status, hasReachedMax: $hasReachedMax, characters: $characters }''';
  }

  @override
  List<Object> get props => [
        status,
        hasReachedMax,
        characters,
        currentPage,
        isLoadingMore,
        errorMsg,
      ];
}
