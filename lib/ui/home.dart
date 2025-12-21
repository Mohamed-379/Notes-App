import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/ui/widgets/customBottomSheet.dart';
import 'package:notes_app/ui/widgets/note_list_body.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => const CustomBottomSheet());
          },
          backgroundColor: kPrimaryColor,
          child: const Icon(
            Icons.add,
            color: Colors.black,
          )),
      body: const NoteListBody(),
    );
  }
}
