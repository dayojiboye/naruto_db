import 'package:flutter/material.dart';
import 'package:naruto_db/core/blocs/character_details/character_details_bloc.dart';
import 'package:naruto_db/utils/theme.dart';
import 'package:naruto_db/widgets/details_heading_text.dart';

class NatureTypeDetails extends StatefulWidget {
  const NatureTypeDetails({
    required this.natureType,
    required this.title,
    required this.state,
    super.key,
  });

  final List<String>? natureType;
  final String title;
  final CharacterDetailsState state;

  @override
  State<NatureTypeDetails> createState() => _NatureTypeDetailsState();
}

class _NatureTypeDetailsState extends State<NatureTypeDetails> {
  bool _isExpanded = false;
  final GlobalKey natureTypeExpansionTileKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return widget.natureType == null || widget.natureType!.isEmpty
        ? const SizedBox()
        : Theme(
            data: Theme.of(context).copyWith(
              dividerColor: Colors.transparent,
            ),
            child: ExpansionTile(
              key: natureTypeExpansionTileKey,
              childrenPadding: const EdgeInsets.all(0),
              tilePadding: const EdgeInsets.only(
                top: 16,
                left: 0,
                right: 0,
                bottom: 0,
              ),
              collapsedBackgroundColor: Colors.grey[50],
              title: DetailsHeadingText(
                title: widget.title,
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
              },
              expandedCrossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...widget.natureType!
                    .map((type) => ListTile(
                          contentPadding: const EdgeInsets.all(0),
                          title: Text(
                            type,
                          ),
                        ))
                    .toList()
              ],
            ),
          );
  }
}
