import 'package:flutter/material.dart';

class MyFormField extends StatelessWidget {
  // yahan text field ko multiple likhe ke bajaye shorter kaam kiya jaa raha hai dont repeat yourself wala concept

  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  const MyFormField(
      {super.key,
      required this.hintText,
      required this.icon,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
