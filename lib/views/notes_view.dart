import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar_widget.dart';
import 'package:notes_app/views/widgets/modal_bottom_sheet_widget.dart';
import 'package:notes_app/views/widgets/notes_list_view.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  static String id = "noteView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                SizedBox(
                  height: 45,
                ),
                CustomAppBarWidget(icon: Icons.search, title: "Notes",),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                  child: NotesListView(),
                ),
              ],
            ),
          ),
      );
  }
}
