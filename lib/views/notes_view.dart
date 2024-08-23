import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/views/widgets/custom_app_bar_widget.dart';
import 'package:notes_app/views/widgets/custom_note_item_widget.dart';
import 'package:notes_app/views/widgets/modal_bottom_sheet_widget.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  static String id = "noteView";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.white,
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return const ModalBottomSheetWidget();
                });
          },
          child: const Icon(Icons.add, color: Colors.black,),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(
                height: 45,
              ),
              const CustomAppBarWidget(icon: Icons.search, title: "Notes",),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.only(bottom: 12),
                    child: CustomNoteItemWidget(),
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
