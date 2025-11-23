import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'customTextFeild.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 28,
            ),
            CustomTextField(
              hintText: "Title",
              maxLines: 1,
            ),
            SizedBox(
              height: 24,
            ),
            CustomTextField(
              hintText: "Description",
              maxLines: 5,
            ),
            SizedBox(
              height: 32,
            ),
            CreateNoteButton(),
            SizedBox(
              height: 24,
            ),
          ],
        ),
      ),
    );
  }
}

class CreateNoteButton extends StatelessWidget {
  const CreateNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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