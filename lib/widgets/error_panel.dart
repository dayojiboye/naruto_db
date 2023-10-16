import 'package:flutter/material.dart';
import 'package:naruto_db/utils/margin.dart';
import 'package:naruto_db/utils/theme.dart';
import 'package:naruto_db/widgets/button.dart';

class ErrorPanel extends StatelessWidget {
  const ErrorPanel({
    required this.errorMsg,
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
            errorMsg.isNotEmpty
                ? errorMsg
                : "An error occurred, please try again!",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: errorMsg.isNotEmpty ? kTextPrimary : kError,
              fontSize: 18,
            ),
          ),
          const YMargin(24),
          errorMsg.isNotEmpty
              ? const YMargin(0)
              : Button(
                  label: "Retry",
                  onPressed: onRefetch,
                )
        ],
      ),
    );
  }
}
