import 'package:flutter/material.dart';

RegExp pascalWords = RegExp(r"(?<=[a-z])(?=[A-Z])");

String getTitles(String input) {
  final word = input.split(pascalWords);
  return word.join(" ").replaceAll(",", ", ").replaceAll(":", ": ");
}

void scrollToSelectedContent({GlobalKey? expansionTileKey}) {
  final keyContext = expansionTileKey!.currentContext;
  if (keyContext != null) {
    Future.delayed(
      const Duration(milliseconds: 200),
    ).then(
      (value) {
        Scrollable.ensureVisible(
          keyContext,
          duration: const Duration(milliseconds: 200),
        );
      },
    );
  }
}
