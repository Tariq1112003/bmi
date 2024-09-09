import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class Calculator{
  final int? height;
  final int? weight;
  double _bmi=0;

  Calculator({@required this.weight, @required this.height});

  String calculateBMI(){
    double _bmi= weight!/pow(height!/100, 2);
   return _bmi.toStringAsFixed(1);
  }
  String getIntertpretation(){
    if(
    _bmi>=25){
      return 'you are fat';
    }else if(_bmi>=18.5){
      return 'you are normal';
    }else {
      return 'you are tiny';
    }
  }
String result(){
    if(_bmi>=25){
      return 'owerweight';
    }else if(_bmi>=18.5){
      return 'normal';
    }else{
      return 'underweight';
    }
}
}