import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, required this.maxLines});

  final String hintText;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        focusedBorder: buildBorder(kPrimaryColor, 10),
        enabledBorder: buildBorder(),
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 18),
      ),
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
    );
  }
}

OutlineInputBorder? buildBorder([Color? color, double? radius]) {
  return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.white),borderRadius: BorderRadius.circular(radius ?? 4));
}