import 'package:flutter/material.dart';

class CustomSearchIconWidget extends StatelessWidget {
  const CustomSearchIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.05),
      ),
      child: const Icon(Icons.search, size: 28,),
    );
  }
}
