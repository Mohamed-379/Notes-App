import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'create_note_form.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print('failed ${state.errMessage}');
          }

          if (state is AddNoteSuccess) {
            Navigator.pop(context);
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(right: 18, left: 18, bottom: MediaQuery.of(context).viewInsets.bottom),
              child: const SingleChildScrollView(child: CreateNoteForm()),
            ),
          );
        },
      ),
    );
  }
}
