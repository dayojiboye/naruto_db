import 'package:flutter/material.dart';
import 'package:naruto_db/utils/extensions.dart';
import 'package:naruto_db/utils/helpers.dart';

class TitlesDetails extends StatelessWidget {
  const TitlesDetails({required this.titles, super.key});

  final List<String> titles;

  @override
  Widget build(BuildContext context) {
    return titles.isNotEmpty
        ? Padding(
            padding: const EdgeInsets.only(top: 32),
            child: Text(
              getTitles(titles.join(" ")).toTitleCase(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          )
        : const SizedBox();
  }
}
