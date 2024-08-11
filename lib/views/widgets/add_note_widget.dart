import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'custom_button_widget.dart';
import 'custom_text_field_widget.dart';

class AddNoteWidget extends StatefulWidget {
  const AddNoteWidget({super.key});

  @override
  State<AddNoteWidget> createState() => _AddNoteWidgetState();
}

class _AddNoteWidgetState extends State<AddNoteWidget> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
        children: [
          CustomTextFieldWidget(
            hintText: "Title",
            onSaved: (value) {
              title = value;
            }, validator: (value) {
            if(value?.isEmpty ?? true) {
              return "Title is required";
            }
            return null;
          },

          ),
          const SizedBox(
            height: 30,
          ),
          CustomTextFieldWidget(
            maxLines: 5,
            hintText: "Body",
            onSaved: (value) {
              subTitle = value;
            },
            validator: (value) {
              if(value?.isEmpty ?? true) {
                return "SubTitle is required";
              }
              return null;
            },
          ),
          const SizedBox(
            height: 40,
          ),
          CustomBottomWidget(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  NoteModel noteModel = NoteModel(title: title!, subTitle: subTitle!, date: DateTime.now().toString(), color: Colors.blue.value);
                  BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                } else {
                  autoValidateMode = AutovalidateMode.always;
                  setState(() {

                  });
                }
              }
          ),
        ],
      ),
    );
  }
}
