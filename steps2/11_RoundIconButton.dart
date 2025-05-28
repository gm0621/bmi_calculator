import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData? icon;
  final void Function()? onPress;

  const RoundIconButton({super.key, this.icon, this.onPress});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF4C4F5E),
      onPressed: onPress,
      shape: CircleBorder(), // 強制為正圓
      child: Icon(icon, color: Colors.white),
    );
  }
}