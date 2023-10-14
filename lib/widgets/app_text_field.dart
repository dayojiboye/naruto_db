import 'package:flutter/material.dart';
import 'package:naruto_db/utils/theme.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    required this.controller,
    required this.hintText,
    this.onChanged,
    this.prefixIcon,
    super.key,
  });

  final TextEditingController controller;
  final String hintText;
  final void Function(String)? onChanged;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: false,
      controller: controller,
      textCapitalization: TextCapitalization.sentences,
      cursorColor: kMuted,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 16,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontSize: 14,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: kMuted,
          ),
          borderRadius: BorderRadius.circular(4),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            color: kMuted,
          ),
        ),
      ),
      onChanged: onChanged,
    );
  }
}
