import 'package:flutter/material.dart';
import 'package:naruto_db/core/blocs/character_details/character_details_bloc.dart';
// import 'package:naruto_db/utils/helpers.dart';
import 'package:naruto_db/utils/theme.dart';
import 'package:naruto_db/widgets/details_heading_text.dart';
import 'package:naruto_db/widgets/personal_details.dart';

class FamilyDetails extends StatefulWidget {
  const FamilyDetails({required this.state, super.key});

  final CharacterDetailsState state;

  @override
  State<FamilyDetails> createState() => _FamilyDetailsState();
}

class _FamilyDetailsState extends State<FamilyDetails> {
  bool _isExpanded = false;
  final GlobalKey familyExpansionTileKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return widget.state.character?.family == null ||
            widget.state.character!.family!.isEmpty
        ? const SizedBox()
        : Theme(
            data: Theme.of(context).copyWith(
              dividerColor: Colors.transparent,
            ),
            child: ExpansionTile(
              key: familyExpansionTileKey,
              childrenPadding: const EdgeInsets.all(0),
              tilePadding: const EdgeInsets.only(
                top: 16,
                left: 0,
                right: 0,
                bottom: 0,
              ),
              collapsedBackgroundColor: Colors.grey[50],
              title: const DetailsHeadingText(
                title: "Family",
                isAccordionTitle: true,
              ),
              trailing: AnimatedRotation(
                turns: _isExpanded ? 0.5 : 0,
                duration: const Duration(milliseconds: 50),
                child: const Icon(
                  Icons.keyboard_arrow_down_sharp,
                  size: 32,
                  color: kTextPrimary,
                ),
              ),
              onExpansionChanged: (value) {
                setState(() {
                  _isExpanded = value;
                });
                // if (value) {
                //   scrollToSelectedContent(
                //     expansionTileKey: familyExpansionTileKey,
                //   );
                // }
              },
              children: [
                ...widget.state.character!.family!.entries
                    .map((e) => PersonalDetails(title: e.key, value: e.value))
              ],
            ),
          );
  }
}
