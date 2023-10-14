import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:naruto_db/core/blocs/characters/characters_bloc.dart';
import 'package:naruto_db/enums/view_status.dart';
import 'package:naruto_db/utils/margin.dart';
import 'package:naruto_db/utils/theme.dart';
import 'package:naruto_db/widgets/app_text_field.dart';
import 'package:naruto_db/widgets/character_card.dart';
import 'package:naruto_db/widgets/characters_shimmer.dart';
import 'package:naruto_db/widgets/error_panel.dart';

class CharactersScreen extends StatefulWidget {
  const CharactersScreen({super.key});

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  final TextEditingController _searchTextController = TextEditingController();

  @override
  void dispose() {
    _searchTextController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey[200],
      body: BlocBuilder<CharactersBloc, CharactersState>(
        builder: (context, state) {
          switch (state.status) {
            case ViewStatus.failure:
              return ErrorPanel(
                onRefetch: () =>
                    context.read<CharactersBloc>().add(FetchCharacters()),
              );

            case ViewStatus.success:
              // To-Do: create empty widget
              if (state.characters.isEmpty) {
                return Center(
                  child: Text(
                    "No Character Found",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kError,
                      fontSize: 18,
                    ),
                  ),
                );
              }

              return SafeArea(
                bottom: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(
                        top: 20,
                        left: 16,
                        right: 16,
                      ),
                      child: AppTextField(
                        controller: _searchTextController,
                        hintText: "Search character",
                        prefixIcon: const Icon(
                          Icons.search,
                          color: kMuted,
                        ),
                      ),
                    ),
                    const YMargin(24),
                    Expanded(
                      child: GridView.builder(
                        shrinkWrap: true,
                        padding: const EdgeInsets.only(
                          left: 16,
                          right: 16,
                          // top: 20,
                          bottom: 80,
                        ),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                        ),
                        itemCount: state.characters.length,
                        itemBuilder: (context, index) {
                          return CharacterCard(
                            name: state.characters[index].name!,
                            id: state.characters[index].id!,
                            image: state.characters[index].images!.isNotEmpty
                                ? state.characters[index].images![0]
                                : "https://via.placeholder.com/150?text=${state.characters[index].name}",
                          );
                        },
                      ),
                    ),
                  ],
                ),
              );

            case ViewStatus.initial:
              return const CharactersShimmer();
          }
        },
      ),
    );
  }
}
