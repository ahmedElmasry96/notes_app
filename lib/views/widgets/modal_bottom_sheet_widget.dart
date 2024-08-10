import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button_widget.dart';
import 'package:notes_app/views/widgets/custom_text_field_widget.dart';

class ModalBottomSheetWidget extends StatelessWidget {
  const ModalBottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: AddNoteWidget(),
      ),
    );
  }
}

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
