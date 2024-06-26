import 'package:flutter/material.dart';
import 'dart:math';

class BmiBrain {
  BmiBrain({required this.height, required this.weight});

  double _bmi = 0;
  final int height;
  final int weight;
  String geBmi() {
    _bmi = weight / pow((height / 100), 2);

    debugPrint("$_bmi");
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a little higher than normal body weight. Try to exercise more. ';
    } else if (_bmi >= 18.5) {
      return "You have a normal body weight. Good Job!";
    } else {
      return 'You have a little lower than normal body weight. You can eat a bit more. ';
    }
  }
}
