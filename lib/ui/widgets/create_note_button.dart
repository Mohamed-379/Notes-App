import 'package:flutter/material.dart';

import '../../constants.dart';

class CreateNoteButton extends StatelessWidget {
  const CreateNoteButton({super.key, required this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
            child: Text(
              "Save",
              style: TextStyle(fontSize: 20, color: Colors.black),
            )),
      ),
    );
  }
}