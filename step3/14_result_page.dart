import 'package:bmi_calculator/component/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/contants.dart';
import 'package:bmi_calculator/component/bottom_button.dart';


class ResultPage extends StatelessWidget {

  final String bmiResult;
  final String resultText;
  final String interpretation;


  const ResultPage({
    super.key,
    required this.interpretation,
    required this.bmiResult,
    required this.resultText,

  });

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
                    child: Text(resultText, style: kResultTextStyle),
                  ),
                  Text(bmiResult.toUpperCase(), style: kBMITextStyle),
                  Text(
                    interpretation,
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
