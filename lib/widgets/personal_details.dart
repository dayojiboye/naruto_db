import 'package:flutter/material.dart';
import 'package:naruto_db/core/models/characters/characters.dart';
import 'package:naruto_db/utils/extensions.dart';
import 'package:naruto_db/utils/margin.dart';
import 'package:naruto_db/utils/theme.dart';

class PersonalDetails extends StatelessWidget {
  const PersonalDetails({
    required this.title,
    required this.value,
    super.key,
  });

  final String title;
  final dynamic value;

  String get getValueDetails {
    switch (value.runtimeType) {
      case List:
        return value.join(", ");
      case Age:
      case Weight:
        return value.toString();
      default:
        return value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return value == null
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
                    "${title.toTitleCase()}:",
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      color: kTextPrimary,
                      fontSize: 16,
                    ),
                  ),
                ),
                title: Text(
                  getValueDetails,
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
