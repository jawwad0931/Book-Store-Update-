import 'package:bookstore_app/Components/BookCard.dart';
import 'package:bookstore_app/Components/BookTile.dart';
import 'package:bookstore_app/Models/Data.dart';
import 'package:bookstore_app/Pages/BookDetails/BookDetail.dart';
import 'package:bookstore_app/Pages/HomePage/widget/Appbar.dart';
import 'package:bookstore_app/Pages/HomePage/widget/categorywidget.dart';
import 'package:bookstore_app/Pages/HomePage/widget/greeting.dart';
import 'package:bookstore_app/Pages/HomePage/widget/myInputfield.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Header Section
            Container(
              padding: const EdgeInsets.all(10),
              color: Theme.of(context).colorScheme.primary,
              height: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 30),
                  // appbar wala section hai
                  const HomeAppBar(),
                  const SizedBox(height: 30),
                  // Greeting Section
                  const Greeting(),
                  const SizedBox(height: 30),
                  // Input Field Section hai ye dusri file mai hai
                  const MyInputField(),
                  const SizedBox(height: 30),
                  // ye scrollable wala section hai jahan saray items show ho rahe hain
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: CategoryData.map((e) => CategoryWidget(
                            iconPath: e["icon"]!,
                            btnName: e["label"]!,
                          )).toList(),
                    ),
                  )
                ],
              ),
            ),
            // Additional Content Section (if needed)
            // yeh neechay wala code hai
            const SizedBox(height: 10),
            const Padding(
              padding:
                  EdgeInsets.only(left: 10.0), // Adjust the value as needed
              child: Row(
                children: [
                  Text("Trending"),
                ],
              ),
            ),
            const SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              // yahan book wala code map kiya gaya hai
              child: Row(
                children: bookData
                    .map((e) => BookCard(
                          coverUrl: e.coverUrl!,
                          title: e.title!,
                          onTap: () {
                            Get.to(BookDetails(
                              // yahan book ka model use ho raha hai jo humne bookdetail mai banaya hai
                              book: e,
                            ));
                          },
                        ))
                    .toList(),
              ),
            ),
            // ======================================================================video stop 1 hour 55 min stop
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Text("Your Interests"),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Column(
                children: bookData
                    .map((element) => BookTiles(
                          title: element.title!,
                          author: element.author!,
                          coverUrl: element.coverUrl!,
                          price: element.price!,
                          rating: element.rating!,
                          numberofRating: element.numberofRating!,
                        ))
                    .toList()),
          ],
        ),
      ),
    );
  }
}
