import 'package:bmi_calculator/component/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/contants.dart';
import 'package:bmi_calculator/component/bottom_button.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              child: Text('Your Result', style: kNumberTextStyle),
            ),
          ),
          Expanded(
            flex: 6,
            child: ReusableCard(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text('Normal', style: kResultTextStyle),
                  ),
                  Text('18.2', style: kBMITextStyle),
                  Text(
                    'Your BMI reslut is quite low, you should eat more.',
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(context);
            },
            buttonTitle: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
