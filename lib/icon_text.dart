import 'package:flutter/material.dart';

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
        Text(text, style: TextStyle(fontSize: 18, color: Color(0xFF8D8E98))),
      ],
    );
  }
}