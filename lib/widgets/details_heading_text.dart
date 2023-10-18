import 'package:flutter/material.dart';
import 'package:naruto_db/utils/margin.dart';
import 'package:naruto_db/utils/theme.dart';

class DetailsHeadingText extends StatelessWidget {
  const DetailsHeadingText({
    required this.title,
    this.isAccordionTitle = false,
    this.isHidden = false,
    super.key,
  });

  final String title;
  final bool isAccordionTitle;
  final bool isHidden;

  @override
  Widget build(BuildContext context) {
    return isHidden
        ? const SizedBox()
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              isAccordionTitle ? const SizedBox() : const YMargin(32),
              Text(
                title,
                style: const TextStyle(
                  color: kTextPrimary,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
              isAccordionTitle ? const SizedBox() : const YMargin(12),
            ],
          );
  }
}
