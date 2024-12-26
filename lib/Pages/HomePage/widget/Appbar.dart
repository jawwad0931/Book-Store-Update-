import 'package:bookstore_app/Pages/Profilepage.dart/Profilepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // SvgPicture.asset(
        //   "assets/images/4735.svg",
        // )
        Text("data"),
        Text("E-Book"),
        InkWell(
          onTap: () {
            Get.to(ProfilePage());
          },
          child: CircleAvatar(
            backgroundColor: Theme.of(context).colorScheme.surface,
            child: const Text("j",
                style: TextStyle(
                  color: Colors.yellow,
                )),
          ),
        )
      ],
    );
  }
}
