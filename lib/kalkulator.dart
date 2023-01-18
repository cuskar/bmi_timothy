import 'dart:math';
import 'package:flutter/material.dart';

class Calculate {
  Calculate({required this.height, required this.weight});
  final int height;
  final int weight;
  double _bmi = 0;
  Color _textColor = Color(0xFF24D876);
  String result() {
    _bmi = (weight / pow(height / 100, 2));
    return _bmi.toStringAsFixed(1);
  }

  String getText() {
    if (_bmi >= 25) {
      return 'GEMUK';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'KURUS';
    }
  }

  String getAdvise() {
    if (_bmi >= 25) {
      return 'Berat badanmu lebih dari normal.\nCobalah olahraga tiap hari!';
    } else if (_bmi > 18.5) {
      return 'Berat badanmu normal.\nSelamat!';
    } else {
      return 'Berat badanmu kurang dari normal.\nMakanlah yang banyak!';
    }
  }

  Color getTextColor() {
    if (_bmi >= 25 || _bmi <= 18.5) {
      return Colors.red;
    } else {
      return Colors.green;
    }
  }
}
