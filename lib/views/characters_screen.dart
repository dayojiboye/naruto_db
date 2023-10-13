import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:naruto_db/core/blocs/characters/characters_bloc.dart';
import 'package:naruto_db/enums/view_status.dart';
import 'package:naruto_db/utils/theme.dart';

class CharactersScreen extends StatelessWidget {
  const CharactersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CharactersBloc, CharactersState>(
        builder: (context, state) {
          switch (state.status) {
            case ViewStatus.failure:
              return const Center(
                child: Text("An error occurred"),
              );
            case ViewStatus.success:
              if (state.characters.isEmpty) {
                // To-Do: create error widget with button to refetch
                return Center(
                  child: Text(
                    "An error occurred",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: kError,
                      fontSize: 18,
                    ),
                  ),
                );
              }

              return Center(
                child: Text("${state.characters.length}"),
              );

            case ViewStatus.initial:
              // To-Do: create loading widget with shimmer
              return const Center(
                child: CupertinoActivityIndicator(
                  radius: 24,
                ),
              );
          }
        },
      ),
    );
  }
}
