import 'package:bmi_calculator/widgets/app_theme.dart';
import 'package:bmi_calculator/widgets/screen/main_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: appTheme,
      home: Scaffold(
          appBar: AppBar(
            title: Text('BMI CALCULATOR'),
          ),
          body: MainPage()),
    );
  }
}
