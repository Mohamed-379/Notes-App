import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'customTextFeild.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: SingleChildScrollView(
        child: CreateNoteForm(),
      ),
    );
  }
}

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

class CreateNoteButton extends StatelessWidget {
  const CreateNoteButton({super.key, required this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 55,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
            child: Text(
          "Save",
          style: TextStyle(fontSize: 20, color: Colors.black),
        )),
      ),
    );
  }
}