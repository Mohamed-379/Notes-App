import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import '../../constants.dart';

class CreateNoteButton extends StatelessWidget {
  const CreateNoteButton({super.key, required this.onTap, required this.isLoading});

  final bool isLoading;
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
        child: Center(
            child: isLoading ? LoadingAnimationWidget.inkDrop(color: Colors.black, size: 30) : const Text(
              "Save",
              style: TextStyle(fontSize: 20, color: Colors.black),
            )),
      ),
    );
  }
}