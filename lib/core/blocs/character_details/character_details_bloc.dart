import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:naruto_db/core/models/characters/characters.dart';
import 'package:naruto_db/core/repositories/api_repository.dart';
import 'package:naruto_db/enums/view_status.dart';

part 'character_details_event.dart';
part 'character_details_state.dart';

class CharacterDetailsBloc
    extends Bloc<CharacterDetailsEvent, CharacterDetailsState> {
  final ApiRepository apiRepository;

  CharacterDetailsBloc({required this.apiRepository})
      : super(const CharacterDetailsState()) {
    on<FetchCharacterDetails>(
      (event, emit) async {
        emit(
          state.copyWith(
            status: ViewStatus.initial,
          ),
        );

        try {
          final character = await apiRepository.getCharacterById(event.id);

          return emit(
            state.copyWith(
              status: ViewStatus.success,
              character: character,
            ),
          );
        } catch (e) {
          print(e);
          emit(
            state.copyWith(
              status: ViewStatus.failure,
              character: null,
            ),
          );
        }
      },
    );
  }
}
