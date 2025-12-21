import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/ui/widgets/edit_note_item.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => const EditNoteItem(),));
      },
      child: Container(
        margin: const EdgeInsets.only(top: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: const Color(0xffFFCB7A)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: const TextStyle(
                    fontSize: 22,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              contentPadding: const EdgeInsets.all(24),
              subtitle: Padding(
                padding: const EdgeInsets.only(
                  top: 24,
                ),
                child: Text(
                  note.description,
                  style: TextStyle(
                      fontSize: 18, color: Colors.black.withOpacity(0.5)),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon: const Icon(
                      Icons.delete,
                      color: Colors.black,
                      size: 24
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30, bottom: 25),
              child: Text(
                note.date,
                style: TextStyle(
                    fontSize: 14, color: Colors.black.withOpacity(0.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}