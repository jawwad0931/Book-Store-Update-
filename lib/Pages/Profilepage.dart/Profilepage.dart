import 'package:bookstore_app/Components/BookTile.dart';
import 'package:bookstore_app/Controller/AuthController.dart';
import 'package:bookstore_app/Controller/BookController.dart';
import 'package:bookstore_app/Models/Data.dart';
import 'package:bookstore_app/Pages/AddNewBook/AddNewPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

// ===================================================================================================
// video 3:21:10 per yahan back button kaam nahi kar raha
// ===================================================================================================
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // yahan bookcontroller call kiya hai kiunke book controller se data aa rahah hai database se
    BookController bookcontroller = Get.put(BookController());
    AuthController authcontroller = Get.put(AuthController());
    //Auth controller hai yeneeechay wala
    AuthController authController = Get.put(AuthController());
    // Sample book data to simulate the data source.
    // Replace this with your actual `bookData` from the API or database.

    return Scaffold(
      // yahan add ka icon laga hua hai
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(AddNewBook());
        },
        child: const Icon(Icons.add),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Section
            Container(
              height: 300,
              padding: EdgeInsets.all(15),
              color: Theme.of(context).colorScheme.primary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // yahan hai back button ==========================================
                            const BackButton(),
                            const Text(
                              "Profile",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),

                            // logout ka button yahan hai=============================================

                            IconButton(
                                onPressed: () {
                                  authcontroller.SignOut();
                                },
                                icon: const Icon(Icons.logout))
                            // =======================================================================
                          ],
                        ),
                        // User Profile Image
                        const SizedBox(height: 20),
                        Container(
                          height: 100,
                          width: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset(
                              "Assets/images/4735.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        // User Name
                        Text(
                          "Jawwad Khan",
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        // User Email
                        const Text(
                          "Jawwadkhan0931@gmail.com",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            // Books Section
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Section Title
                  const Text(
                    "Your Books",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  // List of Book Tiles
                  Obx(
                    () => Column(
                      children: bookcontroller.currentUserBook
                          // bookData
                          .map((element) => BookTiles(
                                title: element.title!,
                                author: element.author!,
                                coverUrl: element.coverUrl!,
                                price: element.price!,
                                rating: element.rating!,
                                numberofRating: element.numberofRating!,
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
