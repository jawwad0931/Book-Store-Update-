import 'package:bookstore_app/Controller/BookController.dart';
import 'package:bookstore_app/Controller/splaceController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:lottie/lottie.dart';

class SplacePage extends StatelessWidget {
  const SplacePage({super.key});

  @override
  Widget build(BuildContext context) {
    Splacecontroller splaceController = Get.put(Splacecontroller());
    // jesay hi splash screen on hogi yeh page load hojayega after the splash page
    BookController bookcontroller = Get.put(BookController());
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(child: Lottie.asset("Assets/Animation/anime1.json")),
    );
  }
}
