import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/ui/widgets/note_item.dart';

class NoteListview extends StatelessWidget {
  const NoteListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<NotesCubit, NotesState>(
        builder: (context, state){
          List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
          return ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) => NoteItem(note: notes[index]),
            padding: EdgeInsets.zero,
          );
        },
      ),
    );
  }
}
