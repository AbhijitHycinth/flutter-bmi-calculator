import 'package:bmi_calculator/helper/bmi_calculator_brain.dart';
import 'package:bmi_calculator/styles.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  String _result;

  ResultPage({@required height, @required weight}) {
    var bmiCalculator = BMICalculatorBrain(weight, height);
    _result = bmiCalculator.calculate().toStringAsFixed(2);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        _result,
        style: kAgeStyle,
      ),
    );
  }
}
