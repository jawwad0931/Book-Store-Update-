import 'package:flutter/material.dart';

class MultilineTextField extends StatelessWidget {
  // yahan text field ko multiple likhe ke bajaye shorter kaam kiya jaa raha hai dont repeat yourself wala concept

  final String hintText;
  final TextEditingController controller;
  const MultilineTextField(
      {super.key, required this.hintText, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        maxLines: 5,
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
