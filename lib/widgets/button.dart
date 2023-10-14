import 'package:flutter/material.dart';
import 'package:naruto_db/utils/theme.dart';

class Button extends StatelessWidget {
  const Button({
    this.onPressed,
    required this.label,
    this.height = 40,
    this.width = 200,
    super.key,
  });

  final void Function()? onPressed;
  final String label;
  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          splashFactory: NoSplash.splashFactory,
          backgroundColor: kPrimary,
          disabledBackgroundColor: kMuted,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Text(
          label,
          style: const TextStyle(
            color: kWhite,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
