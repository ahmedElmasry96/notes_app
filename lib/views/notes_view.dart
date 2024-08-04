import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar_widget.dart';
import 'package:notes_app/views/widgets/custom_note_item_widget.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const SizedBox(
              height: 45,
            ),
            const CustomAppBarWidget(),
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
    );
  }
}
