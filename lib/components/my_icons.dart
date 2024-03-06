import 'package:flutter/material.dart';

class MyIcons extends StatelessWidget {
  final String iconImagePath;
  final String iconText;
  const MyIcons(
      {super.key, required this.iconImagePath, required this.iconText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.white, blurRadius: 20)],
              borderRadius: BorderRadius.circular(16)),
          height: 100,
          child: Center(
            child: Image.asset(
              iconImagePath,
            ),
          ),
        ),
        Text(iconText),
      ],
    );
  }
}
