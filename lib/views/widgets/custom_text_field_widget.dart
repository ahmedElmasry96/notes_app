import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
class CustomTextFieldWidget extends StatelessWidget {
  const CustomTextFieldWidget({super.key, this.maxLines = 1, required this.hintText});
  final int maxLines;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(
          color: kPrimaryColor,
        ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
      ),
    );
  }
}

OutlineInputBorder buildBorder([Color? c]) {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: c ?? Colors.white)
  );
}
