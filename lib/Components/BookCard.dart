import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String coverUrl;
  final String title;
  final VoidCallback onTap;
  const BookCard(
      {super.key,
      required this.coverUrl,
      required this.title,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(
          width: 120,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  coverUrl,
                  // "Assets/images/4735.jpg",
                  width: 130,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                title,
                // "This is book title",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
