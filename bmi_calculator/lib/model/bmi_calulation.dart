import 'dart:math';

class BMICalculation {
  final int height;
  final int weight;
  double bmi;

  BMICalculation({this.height, this.weight});

  String calculateBMI() {
    bmi = weight / pow(height / 100, 2);
    return bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return "OverWeight";
    } else if (bmi > 18.5) {
      return "Normal";
    } else {
      return "UnderWeight";
    }
  }

  String getInterpretation(){
    if (bmi >= 25) {
      return "You have an higher than normal body Weigh. Try to exercise more.";
    } else if (bmi > 18.5) {
      return "You have an normal body wWeight. Good Job!";
    } else {
      return "You have an lower than normal body Weight. You can eat a bit more";
    }
  }
}
