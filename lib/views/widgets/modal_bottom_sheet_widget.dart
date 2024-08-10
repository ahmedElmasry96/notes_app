import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/views/widgets/custom_button_widget.dart';
import 'package:notes_app/views/widgets/custom_text_field_widget.dart';

class ModalBottomSheetWidget extends StatelessWidget {
  const ModalBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            CustomTextFieldWidget(
              hintText: "Title",
            ),
            SizedBox(
              height: 30,
            ),
            CustomTextFieldWidget(
              maxLines: 5,
              hintText: "Body",
            ),
            SizedBox(
              height: 40,
            ),
            CustomBottomWidget(),
          ],
        ),
      ),
    );
  }
}
