import 'package:bookstore_app/Models/bookModel.dart';
import 'package:bookstore_app/Pages/BookDetails/BookActionBtn.dart';
import 'package:bookstore_app/Pages/BookDetails/HeaderWidget.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatelessWidget {
  final BookModel book;
  const BookDetails({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header Section
            Container(
              child: BookDetailHeader(
                coverUrl: book.coverUrl ?? "", // Provide default value if null
                title: book.title ?? "Unknown Title",
                author: book.author ?? "Unknown Author",
                description: book.description ?? "No description available.",
                rating: book.rating?.toString() ??
                    "0.0", // Convert rating to string
                pages: book.pages ?? 0, // Default to 0 if pages is null
                language: book.language ?? "Unknown Language",
                audioLength:
                    book.audioLength ?? "N/A", // Default to "N/A" if null
              ),
            ),
            const SizedBox(height: 20),

            // About Book Section
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About Book",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    book.description!,
                    // "Some lorem content. If you don't know, now you know! This is a placeholder description for the book.",
                    style: TextStyle(
                      fontSize: 12,
                      height: 1.5, // Improves text readability
                    ),
                  ),
                  // Ye iske neechay  uper wala code hi duplicate kiya gaya hai
                  Text(
                    "About Author",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    // "Some lorem content. If you don't know, now you know! This is a placeholder description for the book.",
                    book.aboutAuthor!,
                    style: TextStyle(
                      fontSize: 12,
                      height: 1.5, // Improves text readability
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Padding(padding: EdgeInsets.all(10), child: BookActionBtn())
          ],
        ),
      ),
    );
  }
}
