import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_search_icon_widget.dart';

class CustomAppBarWidget extends StatelessWidget {
  const CustomAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text("Notes", style: TextStyle(fontSize: 28),),
        Spacer(),
        CustomSearchIconWidget(),
      ],
    );
  }
}
