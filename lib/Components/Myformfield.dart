import 'package:flutter/material.dart';

class MyFormField extends StatelessWidget {
  // yahan text field ko multiple likhe ke bajaye shorter kaam kiya jaa raha hai dont repeat yourself wala concept

  final String hintText;
  final IconData icon;
  // yeh integer value ke liye hai
  final bool isNumber;
  final TextEditingController controller;
  const MyFormField({
    super.key,
    required this.hintText,
    required this.icon,
    required this.controller,
    this.isNumber = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextFormField(
        controller: controller,
        keyboardType: isNumber ? TextInputType.number : TextInputType.text,
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
