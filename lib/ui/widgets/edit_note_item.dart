import 'package:flutter/material.dart';
import 'package:notes_app/ui/widgets/customTextFeild.dart';
import 'package:notes_app/ui/widgets/custom_appbar.dart';

class EditNoteItem extends StatelessWidget {
  const EditNoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16, top: 36),
        child: Column(
          children: [
            CustomAppBar(title: "Edit Note", icon: Icons.check,onPress: (){},),
            const SizedBox(height: 24,),
            const CustomTextField(hintText: "Title", maxLines: 1),
            const SizedBox(height: 14,),
            const CustomTextField(hintText: "Content", maxLines: 6),
          ],
        ),
      ),
    );
  }
}