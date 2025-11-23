import 'package:flutter/material.dart';
import 'package:notes_app/ui/widgets/note_item.dart';

class NoteListview extends StatelessWidget {
  const NoteListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) => const NoteItem(),
        padding: EdgeInsets.zero,
      ),
    );
  }
}
