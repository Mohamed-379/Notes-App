import 'package:flutter/material.dart';

import '../../constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, this.maxLines, this.onSaved});

  final String hintText;
  final int? maxLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if(value?.isEmpty ?? true){
          return 'Field is required';
        }else{
          return null;
        }
      },
      decoration: InputDecoration(
        focusedBorder: buildBorder(kPrimaryColor, 2),
        enabledBorder: buildBorder(),
        errorBorder: buildBorder(Colors.red),
        focusedErrorBorder: buildBorder(Colors.red, 2),
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 18),
      ),
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
    );
  }
}

OutlineInputBorder? buildBorder([Color? color, double? width]) {
  return OutlineInputBorder(
      borderSide: BorderSide(color: color ?? Colors.white, width: width?? 1),borderRadius: BorderRadius.circular(8));
}