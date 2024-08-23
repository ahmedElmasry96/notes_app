import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';
class CustomNoteItemWidget extends StatelessWidget {
  const CustomNoteItemWidget({
    super.key,
    required this.note
  });
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
            context,
            EditNoteView.id,
          arguments: note,  // Pass the item here
        );
      },
      child: Container(
        padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 0),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text(note.title, style: const TextStyle(color: Colors.black, fontSize: 24),),
              ),
              subtitle: Text(note.subTitle, style: TextStyle(color: Colors.black.withOpacity(.5), fontSize: 16),),
              trailing: IconButton(onPressed: () {
                note.delete();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              }, icon: const Icon(Icons.delete, color: Colors.black,), iconSize: 35,),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15, top: 20),
              child: Text(note.date, style: TextStyle(color: Colors.black.withOpacity(0.4)),),
            )
          ],
        ),
      ),
    );
  }
}
