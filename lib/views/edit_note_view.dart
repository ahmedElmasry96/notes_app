import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/widgets/custom_app_bar_widget.dart';
import 'package:notes_app/views/widgets/custom_text_field_widget.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = "editNoteView";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 45,
            ),
            CustomAppBarWidget(icon: Icons.check, title: "Edit Note",),
            SizedBox(
              height: 45,
            ),
            // CustomTextFieldWidget(
            //   hintText: "Title",
            // ),
            SizedBox(
              height: 30,
            ),
            // CustomTextFieldWidget(
            //   maxLines: 5,
            //   hintText: "Body",
            // ),
          ],
        ),
      ),
    );
  }
}
