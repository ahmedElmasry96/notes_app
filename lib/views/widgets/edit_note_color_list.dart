import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  List<Color> colors = const [
    Color(0xffc0392b),
    Color(0xffe67e22),
    Color(0xff2ecc71),
    Color(0xff3498db),
    Color(0xfff1c40f),
    Color(0xff7f8c8d),
  ];

  late int currentIndex = colors.indexOf(Color(widget.note.color));
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
                  widget.note.color = colors[index].value;
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
