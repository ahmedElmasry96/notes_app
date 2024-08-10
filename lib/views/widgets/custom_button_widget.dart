import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomBottomWidget extends StatelessWidget {
  const CustomBottomWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: const Center(
          child: Text(
            "Add",
            style: TextStyle(color: Colors.black, fontSize: 18),
          )),
    );
  }
}
