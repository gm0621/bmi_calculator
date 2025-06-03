import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _bmi = 0;

  CalculatorBrain({
    required this.height,
    required this.weight
  });


  // BMI（身體質量指數）的計算公式是：BMI = 體重(公斤) / 身高(公尺)^2
  // 70 / (1.75 * 1.75) = 22.9.
  String calculateBMI(){
    // double bmi = weight / pow(height / 100 , 2);
    _bmi = weight / pow(height / 100 , 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi >=25){
      return 'Overweight';
    }else if (_bmi > 18.5){
      return 'Normal';
    }else {
      return 'Underweight';
    }
  }


  String getInterpretation(){
    if(_bmi >=25){
      return 'You have a higher than normal body weight. Try to exercise more.';
    }else if (_bmi > 18.5){
      return 'You have a normal body weight. Good job';
    }else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }

}