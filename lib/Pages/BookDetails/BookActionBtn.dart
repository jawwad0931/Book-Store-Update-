import 'package:bookstore_app/Pages/BookPage/Bookpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class BookActionBtn extends StatelessWidget {
  const BookActionBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.blue.shade100,
        borderRadius: BorderRadius.circular(20), // Add border radius
      ),
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space items apart
        children: [
          // First Image and Text
          InkWell(
            onTap: () {
              Get.to(const BookPage());
            },
            child: Row(
              children: [
                Image.asset(
                  "Assets/images/4735.jpg",
                  width: 25,
                  height: 25,
                ),
                const SizedBox(width: 10), // Space between image and text
                const Text(
                  "Read Book",
                  style: TextStyle(
                    fontSize: 18, // Adjust font size if needed
                    fontWeight: FontWeight.bold, // Make the text bold
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 25,
            width: 3,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          // Second Image and Text
          Row(
            children: [
              Image.asset(
                "Assets/images/4735.jpg",
                width: 25,
                height: 25,
              ),
              const SizedBox(width: 10), // Space between image and text
              const Text(
                "Play Book",
                style: TextStyle(
                  fontSize: 18, // Adjust font size if needed
                  fontWeight: FontWeight.bold, // Make the text bold
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
