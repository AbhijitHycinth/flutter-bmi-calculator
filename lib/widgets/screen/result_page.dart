import 'package:bmi_calculator/helper/bmi_calculator_brain.dart';
import 'package:bmi_calculator/main.dart';
import 'package:bmi_calculator/styles.dart';
import 'package:bmi_calculator/widgets/components/calculate_button.dart';
import 'package:bmi_calculator/widgets/components/card.dart';
import 'package:flutter/material.dart';

enum bmiSlab { underweight, normal, overweight, obese }

class ResultPage extends StatelessWidget {
  double _result;
  bmiSlab _slab;

  final Map<bmiSlab, String> comments = {
    bmiSlab.underweight: "It seems your BMI is very low",
    bmiSlab.normal: "You've been keeping your weight under check.\nGreat!!!",
    bmiSlab.overweight:
        "You're not too far. \nA little more effort, will get you in shape.",
    bmiSlab.obese: "It's time to get in shape."
  };

  ResultPage({@required height, @required weight}) {
    var bmiCalculator = BMICalculatorBrain(weight, height);
    _result = bmiCalculator.calculate();
    _calculateSlab();
  }

  void _calculateSlab() {
    if (_result <= 18.5) {
      _slab = bmiSlab.underweight;
      return;
    } else if (_result > 18.5 && _result <= 24.9) {
      _slab = bmiSlab.normal;
      return;
    } else if (_result > 25.0 && _result < 29.9) {
      _slab = bmiSlab.overweight;
    } else {
      _slab = bmiSlab.obese;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BMICalculator.withScaffold(Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: CustomCard(
              child: Center(
                child: Text(
                  "RESULT",
                  style: kResultStyle,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: CustomCard(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    comments[_slab],
                  ),
                  Text(
                    _result.toStringAsFixed(2),
                    style: kAgeStyle,
                  ),
                  SlabText(_slab)
                ],
              ),
            ),
          ),
          CalculateButton(
            label: "Re-Calculate",
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    ));
  }
}

class SlabText extends StatelessWidget {
  final bmiSlab _slab;

  final Map<bmiSlab, Text> slabTexts = {
    bmiSlab.underweight: Text(
      "underweight",
      style: kSlabText.copyWith(color: kUnderWeightColor),
    ),
    bmiSlab.normal: Text(
      "normal",
      style: kSlabText.copyWith(color: kNormalColor),
    ),
    bmiSlab.overweight: Text(
      "overweight",
      style: kSlabText.copyWith(color: kOverWeightColor),
    ),
    bmiSlab.obese: Text(
      "obese",
      style: kSlabText.copyWith(color: kObeseColor),
    )
  };

  SlabText(this._slab);

  @override
  Widget build(BuildContext context) {
    return slabTexts[_slab];
  }
}
