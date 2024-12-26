import 'package:flutter/material.dart';

class Primarybutton extends StatelessWidget {
  final String btnName;
  final VoidCallback onTap;
  const Primarybutton({super.key, required this.btnName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 30,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              btnName,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(color: Colors.white, letterSpacing: 1.5),
            ),
          ],
        ),
      ),
    );
  }

  //========================================= ye button login ka hai =================================
  // ye buttons hai jo login page mai call ho raha hai primary naam se hai
  // Widget build(BuildContext context) {
  //   return InkWell(
  //     onTap: onTap,
  //     child: Container(
  //       height: 30,
  //       padding: const EdgeInsets.all(5),
  //       decoration: BoxDecoration(
  //         color: Theme.of(context).colorScheme.primary,
  //       ),
  //       child: Row(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: [
  //           Image.asset(
  //             'Assets/icons/google.png', // Replace with your PNG path
  //             height: 20, // Adjust the size as needed
  //           ),
  //           const SizedBox(width: 8), // Space between the image and text
  //           Text(
  //             btnName,
  //             style: Theme.of(context)
  //                 .textTheme
  //                 .bodyMedium
  //                 ?.copyWith(color: Colors.white, letterSpacing: 1.5),
  //           ),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
