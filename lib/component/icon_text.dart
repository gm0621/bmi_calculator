import 'package:flutter/material.dart';
import 'package:bmi_calculator/contants.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80),
        Text(text, style: kLabelTextStyle),
      ],
    );
  }
}