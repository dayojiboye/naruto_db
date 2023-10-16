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
                isLoadingMore: true,
                errorMsg: "",
              ),
            );
          }

          final characters =
              await apiRepository.getAllCharacters(state.currentPage + 1);

          return characters.characters.isEmpty
              ? emit(state.copyWith(
                  hasReachedMax: true,
                  isLoadingMore: false,
                ))
              : emit(
                  state.copyWith(
                    status: ViewStatus.success,
                    characters: List.of(state.characters)
                      ..addAll(characters.characters),
                    currentPage: characters.currentPage,
                    hasReachedMax: false,
                    isLoadingMore: true,
                    errorMsg: "",
                  ),
                );
        } catch (e) {
          // To-Do: implement load more error
          print(e);
          emit(
            state.copyWith(
              status: ViewStatus.failure,
              currentPage: 0,
              characters: [],
            ),
          );
        }
      },
      transformer: throttleDroppable(throttleDuration),
    );
    on<SearchCharacter>(
      (event, emit) async {
        emit(
          state.copyWith(
            status: ViewStatus.initial,
            errorMsg: "",
            // hasReachedMax: false,
          ),
        );

        try {
          if (event.name.trim().isEmpty) {
            final characters = await apiRepository.getAllCharacters();
            return emit(
              state.copyWith(
                status: ViewStatus.success,
                characters: characters.characters,
                hasReachedMax: false,
                currentPage: characters.currentPage,
                isLoadingMore: true,
                errorMsg: "",
              ),
            );
          }

          final character =
              await apiRepository.searchCharacter(event.name.trim());
          return emit(
            state.copyWith(
              status: ViewStatus.success,
              characters: [character],
              isLoadingMore: false,
              hasReachedMax: true,
              currentPage: 0,
              errorMsg: "",
            ),
          );
        } catch (e) {
          if (e.toString().contains("Character with name")) {
            String errorMsg = e.toString().replaceAll("Exception:", "");
            print(errorMsg);
            return emit(
              state.copyWith(
                status: ViewStatus.failure,
                errorMsg: errorMsg,
                currentPage: 0,
                characters: [],
              ),
            );
          }

          print(e);
          emit(
            state.copyWith(
              status: ViewStatus.failure,
              currentPage: 0,
              characters: [],
              errorMsg: "",
            ),
          );
        }
      },
    );
  }
}
