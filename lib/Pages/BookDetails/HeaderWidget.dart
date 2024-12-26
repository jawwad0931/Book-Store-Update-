import 'package:bookstore_app/Components/BackButton.dart';
import 'package:flutter/material.dart';

class BookDetailHeader extends StatelessWidget {
  final String coverUrl;
  final String title;
  final String author;
  final String description;
  final String rating;
  final int pages;
  final String language;
  final String audioLength;

  const BookDetailHeader(
      {super.key,
      required this.title,
      required this.coverUrl,
      required this.author,
      required this.description,
      required this.rating,
      required this.pages,
      required this.language,
      required this.audioLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Top Section with Back Button, Image, Title, Description, and Details
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Theme.of(context).colorScheme.primary,
                Colors.blue.shade200,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyBackButton(),
              const SizedBox(height: 20),
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    // "Assets/images/4735.jpg",
                    coverUrl,
                    width: 250,
                    height: 250,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  title,
                  // "Beach Town : A Novel",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Center(
                child: Text(
                  // "Author | J.K. Rowling",
                  "Author | $author",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                textAlign: TextAlign.center,
                maxLines: 1,
                description,
                // "This is a special book for you. You will enjoy it whenever you access it. Seriously, this is a great read!",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        "Rating",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        rating,
                        // "4.5",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Pages",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        pages.toString(),
                        // "200",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Language",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        language,
                        // "ENG",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "Audio",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        audioLength,
                        // "2 Hr",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
