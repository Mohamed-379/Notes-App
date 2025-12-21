import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import '../../constants.dart';
import '../../models/note_model.dart';
import 'custom_appbar.dart';
import 'note_listView.dart';

class NoteListBody extends StatefulWidget {
  const NoteListBody({super.key});

  @override
  State<NoteListBody> createState() => _NoteListBodyState();
}

class _NoteListBodyState extends State<NoteListBody> {

  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 32),
      child: Column(
        children: [
          CustomAppBar(
            title: "Note App",
            icon: Icons.search_rounded,
            onPress: () async {
              var noteBox = Hive.box<NoteModel>(kNotesBox);
              await noteBox.clear();
              },
          ),
          const NoteListview()
        ],
      ),
    );
  }
}
