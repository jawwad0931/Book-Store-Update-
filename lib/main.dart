import 'package:bookstore_app/Config/Themes.dart';

// jab login ka kaam karna hoga tou login page ke liye isko uncomment karna hai
// import 'package:bookstore_app/Pages/SplacePages/SplacePage.dart';
import 'package:bookstore_app/Pages/WelcomePage.dart';
import 'package:bookstore_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
// import 'package:bookstore_app/Pages/WelcomePage.dart';
// import 'package:bookstore_app/Pages/SplacePages/SplacePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  // ye basically login ke liye hai
  // Widget build(BuildContext context) {
  //   return GetMaterialApp(
  //     title: 'E-BOOK',
  //     theme: lightTheme,
  //     home: const SplacePage(),
  //   );
  // }

  // abhi filhaal main page ka login close kiya hua hai kiunke login work nahi kar rha hai
  // jo ke splace controller mai kaam kar raha hai
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'E-BOOK',
      theme: lightTheme,
      home: MyHomePage(),
    );
  }
}
