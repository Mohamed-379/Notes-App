import 'package:flutter/material.dart';

import 'create_note_button.dart';
import 'customTextFeild.dart';

class CreateNoteForm extends StatefulWidget {
  const CreateNoteForm({super.key});


  @override
  State<CreateNoteForm> createState() => _CreateNoteFormState();
}

class _CreateNoteFormState extends State<CreateNoteForm> {

  String? title, description;
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 28,
          ),
          CustomTextField(
            onSaved: (value) {
              value = title;
            },
            hintText: "Title",
            maxLines: 1,
          ),
          const SizedBox(
            height: 24,
          ),
          CustomTextField(
            onSaved: (value) {
              value = description;
            },
            hintText: "Description",
            maxLines: 5,
          ),
          const SizedBox(
            height: 32,
          ),
          CreateNoteButton(onTap: () {
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
            }else{
              autoValidateMode = AutovalidateMode.always;
            }
            setState(() {});
          },),
          const SizedBox(
            height: 24,
          ),
        ],
      ),
    );
  }
}