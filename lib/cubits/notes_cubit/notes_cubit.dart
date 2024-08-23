import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNotes()
  {
      var notesBox = Hive.box<NoteModel>('notes_box');
      List<NoteModel> notes = notesBox.values.toList();
      return notes;
  }
}
