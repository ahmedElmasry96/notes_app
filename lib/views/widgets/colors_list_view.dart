import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});
  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  List<Color> colors = const [
    Color(0xffc0392b),
    Color(0xffe67e22),
    Color(0xff2ecc71),
    Color(0xff3498db),
    Color(0xfff1c40f),
    Color(0xff7f8c8d),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  BlocProvider.of<AddNoteCubit>(context).color = colors[index];
                  setState(() {});
                },
                child: currentIndex == index ? CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 40,
                  child: CircleAvatar(
                    backgroundColor: colors[index],
                    radius: 35,
                  ),
                ) : CircleAvatar(
                  backgroundColor: colors[index],
                  radius: 40,
                ),
              ),
            );
          }),
    );
  }
}
