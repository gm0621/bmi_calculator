/*
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/component/reusable_card.dart';
import 'package:bmi_calculator/icon_text.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF1D1E33);
const inActiveCardColor = Color(0xFF111328);
const bottomContainer = Color(0xFFFB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = activeCardColor;
  Color femaleCardColor = inActiveCardColor;

  // 1=male, 2=female
  void updateColor(int gender){
    //male card pressed
    if(gender == 1){
      if(maleCardColor == inActiveCardColor){
        maleCardColor = activeCardColor;
        femaleCardColor = inActiveCardColor;
      }else{
        maleCardColor = inActiveCardColor;
        femaleCardColor = activeCardColor;
      }
    }

    //female card pressed
    if(gender == 2){
      if(femaleCardColor == inActiveCardColor){
        maleCardColor = inActiveCardColor;
        femaleCardColor = activeCardColor;
      }else{
        maleCardColor = activeCardColor;
        femaleCardColor = inActiveCardColor;
      }
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI CALCULATOR')),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableCard(
                      color: maleCardColor,
                      child: IconText(
                        icon: FontAwesomeIcons.mars,
                        text: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusableCard(
                      color: femaleCardColor,
                      child: IconText(
                        icon: FontAwesomeIcons.venus,
                        text: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: ReusableCard(color: activeCardColor)),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ReusableCard(color: activeCardColor)),
                Expanded(child: ReusableCard(color: activeCardColor)),
              ],
            ),
          ),
          Container(
            color: bottomContainer,
            margin: EdgeInsets.all(10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
*/