import 'package:flutter/material.dart';
class HomeCarAnimation extends ChangeNotifier{
  double leftPosition = 0.0;
  void animateCar(){
    leftPosition = 0.53;
    notifyListeners();
  }
}