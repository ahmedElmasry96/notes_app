import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar_widget.dart';
import 'package:notes_app/views/widgets/custom_text_field_widget.dart';
import 'package:notes_app/views/widgets/edit_note_color_list.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key});
  static String id = "editNoteView";
  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, subTitle;
  late TextEditingController titleController;
  late TextEditingController subTitleController;
  @override
  Widget build(BuildContext context) {
    final NoteModel note = ModalRoute.of(context)!.settings.arguments as NoteModel;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(
              height: 45,
            ),
            CustomAppBarWidget(
              icon: Icons.check,
              title: "Edit Note",
              onPressed: () {
                note.title = title ?? note.title;
                note.subTitle = subTitle ?? note.subTitle;
                note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
            ),
            const SizedBox(
              height: 45,
            ),
            CustomTextFieldWidget(
              controller: TextEditingController(text: note.title),
              onChanged: (value) {
                title = value;
              },
              hintText: "Title",
            ),
            const SizedBox(
              height: 30,
            ),
            CustomTextFieldWidget(
              controller: TextEditingController(text: note.subTitle),
              onChanged: (value) {
                subTitle = value;
              },
              maxLines: 5,
              hintText: "Body",
            ),
            const SizedBox(height: 40,),
            EditNoteColorList(note: note,),
          ],
        ),
      ),
    );
  }
}
