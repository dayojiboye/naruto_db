import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:naruto_db/core/blocs/characters/characters_bloc.dart';
import 'package:naruto_db/enums/view_status.dart';
import 'package:naruto_db/utils/margin.dart';
import 'package:naruto_db/utils/theme.dart';
import 'package:naruto_db/widgets/character_card.dart';
import 'package:naruto_db/widgets/characters_shimmer.dart';
import 'package:naruto_db/widgets/error_panel.dart';

class CharactersWidget extends StatelessWidget {
  const CharactersWidget({
    required this.state,
    required this.ctx,
    required this.searchTextController,
    required this.scrollController,
    super.key,
  });

  final CharactersState state;
  final BuildContext ctx;
  final TextEditingController searchTextController;
  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    switch (state.status) {
      case ViewStatus.failure:
        return ErrorPanel(
          errorMsg: state.errorMsg,
          onRefetch: () => searchTextController.text.isNotEmpty
              ? ctx
                  .read()<CharactersBloc>()
                  .add(SearchCharacter(searchTextController.text))
              : context.read<CharactersBloc>().add(FetchCharacters()),
        );

      case ViewStatus.success:
        // To-Do: create empty widget
        if (state.characters.isEmpty) {
          return const Center(
            child: Text(
              "No Character Found",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kTextPrimary,
                fontSize: 18,
              ),
            ),
          );
        }

        return CustomScrollView(
          shrinkWrap: true,
          controller: scrollController,
          slivers: [
            SliverPadding(
              padding: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 10,
              ),
              sliver: SliverGrid.builder(
                itemCount: state.characters.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 12,
                  crossAxisSpacing: 12,
                ),
                itemBuilder: (context, index) {
                  return CharacterCard(
                    name: state.characters[index].name,
                    id: state.characters[index].id,
                    image: state.characters[index].images.isNotEmpty
                        ? state.characters[index].images[0]
                        : "https://via.placeholder.com/150?text=${state.characters[index].name}",
                  );
                },
              ),
            ),
            SliverToBoxAdapter(
              child: state.isLoadingMore
                  ? const CharactersShimmer(
                      isLoadingMore: true,
                    )
                  : const YMargin(50),
            ),
          ],
        );

      default:
        return const CharactersShimmer();
    }
  }
}
