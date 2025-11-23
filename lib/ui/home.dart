import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/ui/widgets/customBottomSheet.dart';
import 'package:notes_app/ui/widgets/custom_appbar.dart';
import 'package:notes_app/ui/widgets/note_listView.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) => const CustomBottomSheet());
          },
          backgroundColor: kPrimaryColor,
          child: const Icon(
            Icons.add,
            color: Colors.black,
          )),
      body: Padding(
        padding: const EdgeInsets.only(right: 16, left: 16, top: 32),
        child: Column(
          children: [
            CustomAppBar(title: "Note App", icon: Icons.search_rounded,onPress: (){},),
            const NoteListview()
          ],
        ),
      ),
    );
  }
}