import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'custom_note_item_widget.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});
  @override

  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).fetchAllNotes();
        notes.sort((a, b) => b.date.compareTo(a.date));
        return ListView.builder(
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 12),
                child: CustomNoteItemWidget(note: notes[index],),
              );
            });
      },
    );
  }
}
