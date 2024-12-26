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
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body:Center(
        child: Lottie.asset("Assets/Animation/anime1.json")
       ),
    );
  }
}