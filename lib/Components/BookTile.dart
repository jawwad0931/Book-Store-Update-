import 'package:flutter/material.dart';

class BookTiles extends StatelessWidget {
  final String title;
  final String author;
  final String coverUrl;
  final String rating;
  final int price;
  final int numberofRating;

  const BookTiles(
      {super.key,
      required this.title,
      required this.author,
      required this.coverUrl,
      required this.rating,
      required this.price,
      required this.numberofRating});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      child: InkWell(
        onTap: () {
          // Add your onTap functionality here
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: const Color.fromARGB(255, 255, 241, 241),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            children: [
              const SizedBox(width: 10),
              // Book Cover
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15), // Rounded corners
                  child: Image.asset(
                    coverUrl,
                    width: 100,
                    height: 130,
                    fit: BoxFit.cover, // Ensures the image scales nicely
                  ),
                ),
              ),
              const SizedBox(width: 10),
              // Book Details
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Book Title
                    Text(
                      title,
                      maxLines: 2,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      // maxLines: 2,
                      overflow: TextOverflow.ellipsis, // Handles long titles
                    ),
                    const SizedBox(height: 5), // Spacing
                    // Author
                    Text(
                      // "By: $author",
                      author,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[700],
                      ),
                    ),
                    const SizedBox(height: 5), // Spacing
                    // Price
                    Text(
                      // "Price: $price",
                      price.toString(),
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(height: 10), // Spacing
                    // Rating
                    Row(
                      children: [
                        Image.asset(
                          "Assets/icons/star.png",
                          width: 20,
                          height: 20,
                        ),

                        Text(rating),

                        const SizedBox(width: 5), // Spacing
                        Text(
                          "(Rating: $numberofRating)",
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 10),
            ],
          ),
        ),
      ),
    );
  }
}
