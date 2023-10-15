import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:naruto_db/core/models/characters/character.dart';
import 'package:naruto_db/core/repositories/api_repository.dart';
import 'package:naruto_db/enums/view_status.dart';
import 'package:stream_transform/stream_transform.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';

part 'characters_event.dart';
part 'characters_state.dart';

const throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

class CharactersBloc extends Bloc<CharactersEvent, CharactersState> {
  final ApiRepository apiRepository;
  // To-Do: add refetchLoading to state

  CharactersBloc({required this.apiRepository})
      : super(const CharactersState()) {
    on<FetchCharacters>(
      (event, emit) async {
        if (state.hasReachedMax) return;

        try {
          if (state.status == ViewStatus.initial) {
            final characters = await apiRepository.getAllCharacters();
            return emit(
              state.copyWith(
                status: ViewStatus.success,
                characters: characters.characters,
                hasReachedMax: false,
                currentPage: characters.currentPage,
              ),
            );
          }

          final characters =
              await apiRepository.getAllCharacters(state.currentPage + 1);

          return characters.currentPage == characters.pageSize
              // characters.characters.isEmpty
              ? emit(state.copyWith(hasReachedMax: true))
              : emit(
                  state.copyWith(
                    status: ViewStatus.success,
                    characters: List.of(state.characters)
                      ..addAll(characters.characters),
                    currentPage: characters.currentPage,
                    hasReachedMax: false,
                  ),
                );
        } catch (e) {
          // To-Do: implement load more error
          print(e);
          emit(state.copyWith(status: ViewStatus.failure));
        }
      },
      transformer: throttleDroppable(throttleDuration),
    );
  }
}
