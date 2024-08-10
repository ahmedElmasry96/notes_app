import 'package:flutter/material.dart';
class CustomNoteItemWidget extends StatelessWidget {
  const CustomNoteItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 20, left: 10, right: 0),
      decoration: BoxDecoration(
        color: const Color(0xffF39C12),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Text("Flutter Tips", style: TextStyle(color: Colors.black, fontSize: 24),),
            ),
            subtitle: Text("Build your career with Ahmed Elmasry", style: TextStyle(color: Colors.black.withOpacity(.5), fontSize: 16),),
            trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.delete, color: Colors.black,), iconSize: 35,),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 20),
            child: Text("Aug 4, 2024", style: TextStyle(color: Colors.black.withOpacity(0.4)),),
          )
        ],
      ),
    );
  }
}
