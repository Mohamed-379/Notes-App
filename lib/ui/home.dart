import 'package:flutter/material.dart';
import 'package:notes_app/ui/widgets/custom_appbar.dart';
import 'package:notes_app/ui/widgets/note_item.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 28),
        child: Column(
          children: [CustomAppBar(), NoteItem()],
        ),
      ),
    );
  }
}