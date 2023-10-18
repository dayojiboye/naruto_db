import 'package:flutter/material.dart';
import 'package:naruto_db/utils/margin.dart';
import 'package:naruto_db/utils/theme.dart';

class DetailsHeadingText extends StatelessWidget {
  const DetailsHeadingText({required this.title, super.key});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const YMargin(32),
        Text(
          title,
          style: const TextStyle(
            color: kTextPrimary,
            fontWeight: FontWeight.w600,
            fontSize: 24,
          ),
        ),
        const YMargin(12),
      ],
    );
  }
}
