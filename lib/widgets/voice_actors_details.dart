import 'package:flutter/material.dart';
import 'package:naruto_db/utils/margin.dart';
import 'package:naruto_db/utils/theme.dart';

class VoiceActorsDetails extends StatelessWidget {
  const VoiceActorsDetails({
    required this.title,
    required this.voiceActors,
    super.key,
  });

  final String title;
  final dynamic voiceActors;

  @override
  Widget build(BuildContext context) {
    return voiceActors == null
        ? const SizedBox()
        : Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.only(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 8,
                ),
                shape: const BorderDirectional(
                  bottom: BorderSide(
                    color: kGhost,
                  ),
                ),
                titleAlignment: ListTileTitleAlignment.center,
                leading: SizedBox(
                  width: 100,
                  child: Text(
                    "$title:",
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: kTextPrimary,
                      fontSize: 16,
                    ),
                  ),
                ),
                title: Text(
                  voiceActors.runtimeType == List
                      ? voiceActors.join(", ")
                      : voiceActors,
                  style: const TextStyle(
                    color: kTextPrimary,
                    fontSize: 16,
                  ),
                ),
              ),
              const YMargin(8),
            ],
          );
  }
}
