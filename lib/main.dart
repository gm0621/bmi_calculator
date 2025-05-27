import 'package:bmi_calculator/result_page.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: InputPage(),
      home: ResultPage(),
      // theme: ThemeData.dark(),

      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF0A0E21), // 這裡設定所有 Scaffold 的背景色
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF0A0E21), // 設定您想要的 AppBar 顏色
          foregroundColor: Colors.white,     // 設定 AppBar 上的文字/icon 顏色
        ),
      ),
    );
  }
}

