import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class CustomBottomWidget extends StatelessWidget {
  const CustomBottomWidget({super.key, required this.onTap, this.isLoading = false});
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
            child: isLoading ? const SizedBox(
              width: 25,
              height: 25,
              child: CircularProgressIndicator(
                color: Colors.black,
              ),
            ) : const Text(
              "Add",
              style: TextStyle(color: Colors.black, fontSize: 18),
            )),
      ),
    );
  }
}
