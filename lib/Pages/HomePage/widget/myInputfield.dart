import 'package:flutter/material.dart';

class MyInputField extends StatelessWidget {
  const MyInputField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          border: InputBorder.none,
          hintText: "Search books...",
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
