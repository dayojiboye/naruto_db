import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:naruto_db/core/blocs/character_details/character_details_bloc.dart';
import 'package:naruto_db/enums/view_status.dart';
import 'package:naruto_db/utils/theme.dart';
import 'package:naruto_db/widgets/character_details.dart';
import 'package:naruto_db/widgets/error_panel.dart';

class CharacterDetailsScreen extends StatefulWidget {
  const CharacterDetailsScreen({
    required this.id,
    super.key,
  });

  final int id;

  @override
  State<CharacterDetailsScreen> createState() => _CharacterDetailsScreenState();
}

class _CharacterDetailsScreenState extends State<CharacterDetailsScreen> {
  int activeImageIndex = 0;

  @override
  void initState() {
    super.initState();
    context.read<CharacterDetailsBloc>().add(FetchCharacterDetails(widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: kTextPrimary,
            size: 24,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        height: double.infinity,
        child: BlocBuilder<CharacterDetailsBloc, CharacterDetailsState>(
          builder: (context, state) {
            switch (state.status) {
              case ViewStatus.failure:
                return ErrorPanel(
                  errorMsg: "",
                  onRefetch: () => context
                      .read<CharacterDetailsBloc>()
                      .add(FetchCharacterDetails(widget.id)),
                );

              case ViewStatus.success:
                if (state.isCharacterEmpty) {
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

                return CharacterDetails(
                  state: state,
                  onPageChanged: (index) {
                    setState(() {
                      activeImageIndex = index;
                    });
                  },
                  activeImageIndex: activeImageIndex,
                );

              case ViewStatus.initial:
                return const Center(
                  child: CupertinoActivityIndicator(
                    radius: 16,
                  ),
                );
            }
          },
        ),
      ),
    );
  }
}
