import 'package:bookstore_app/Components/PrimaryButton.dart';
import 'package:bookstore_app/Controller/AuthController.dart';
import 'package:bookstore_app/Pages/HomePage/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    AuthController authController = Get.put(AuthController());
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            padding: const EdgeInsets.all(20),
            color: Theme.of(context).colorScheme.primary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'Assets/images/4735.jpg',
                        width: 300,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        "Welcome Screen",
                        style:
                            Theme.of(context).textTheme.headlineLarge?.copyWith(
                                  color: Colors.white,
                                ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Flexible(
                        child: Text(
                          textAlign: TextAlign.center,
                          "This Book App provide Cutting Edge Technology we will do something best in the future that will absolutly right",
                          style:
                              Theme.of(context).textTheme.labelSmall?.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Disclaimer",
                        style: Theme.of(context).textTheme.labelSmall),
                  ],
                ),
                Row(
                  children: [
                    Flexible(
                      child: Text(
                          "A Pub by Sk which You can read book without reading your data A Pub by Sk which You can read book without reading your data",
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.labelSmall),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // =========== yeh login wale page ka kaam hai ===========
          // Padding(
          //   padding: const EdgeInsets.all(8.0),
          //   child: Primarybutton(
          //       btnName: "Login with google",
          //       onTap: () {
          //         authController.Loginwithgoogle();
          //       }),
          // ),
          // =======================================================

          // yahan login wala kaam nahi ho raha isliye comment kiya hua hai
          // sir ko yehi login wala kaam dikhana hai
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Primarybutton(
                btnName: "Continue",
                onTap: () {
                  Get.to(() => const HomePage());
                }),
          ),
        ],
      ),
    );
  }
}
