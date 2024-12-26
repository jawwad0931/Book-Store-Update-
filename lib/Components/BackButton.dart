import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBackButton extends StatelessWidget {
  const MyBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // yeh get basically routing ka kaam kar raha hai
        Get.back();
      },
      child: Row(
        children: [
          Image.asset(
            "Assets/icons/backs.png",
            height: 25,
            width: 25,
          ),
          const SizedBox(
            width: 8, // Add some space between the icon and text
          ),
          const Text(
            "Back",
            style: TextStyle(
              fontSize: 16, // Customize the font size
              fontWeight: FontWeight.bold, // Optional: Make the text bold
            ),
          ),
          const Spacer(), // Pushes the following text to the right
          const Text(
            "data",
            style: TextStyle(
              fontSize: 16, // Customize the font size
              fontWeight: FontWeight.normal, // Optional: Adjust text styling
            ),
          ),
        ],
      ),
    );
  }
}
