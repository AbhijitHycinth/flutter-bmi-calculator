import 'dart:math';

///Class to calculate BMI
class BMICalculatorBrain {
  int weight;
  int height;

  BMICalculatorBrain(this.weight, this.height);

  ///Method to calculate BMI
  double calculate() {
    double heightInMeters = height / 100;
    return weight / pow(heightInMeters, 2);
  }
}
