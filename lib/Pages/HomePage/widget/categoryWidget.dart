import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  final String iconPath;
  final String btnName;
  const CategoryWidget(
      {super.key, required this.iconPath, required this.btnName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap: () {},
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 10, // Set the desired width
                height: 10, // Set the desired height
                child: Image.asset(iconPath),
              ),
              const SizedBox(width: 10),
              Text(
                btnName,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: const Color.fromARGB(255, 0, 0, 0)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
