import 'package:flutter/material.dart';
import 'package:naruto_db/utils/margin.dart';
import 'package:naruto_db/utils/theme.dart';
import 'package:naruto_db/widgets/button.dart';

class ErrorPanel extends StatelessWidget {
  const ErrorPanel({
    this.errorMsg = "An error occurred",
    required this.onRefetch,
    super.key,
  });

  final String errorMsg;
  final void Function() onRefetch;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "An error occurred",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: kError,
              fontSize: 18,
            ),
          ),
          const YMargin(8),
          Button(
            label: "Retry",
            onPressed: onRefetch,
          )
        ],
      ),
    );
  }
}
