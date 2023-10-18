import 'package:flutter/material.dart';
import 'package:naruto_db/utils/margin.dart';
import 'package:naruto_db/utils/theme.dart';

class DebutDetails extends StatelessWidget {
  const DebutDetails({
    required this.title,
    this.value,
    super.key,
  });

  final String title;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return value == null
        ? const SizedBox()
        : Column(
            children: [
              ListTile(
                contentPadding: const EdgeInsets.all(0),
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
                  value!,
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
