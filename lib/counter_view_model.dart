import 'package:flutter/material.dart';

class CounterViewModel extends ChangeNotifier{
  int count = 0;
  bool isLoading = false;

  void increment(){
    isLoading = true;
    notifyListeners();

    count = count + 2;
    isLoading = false;
    notifyListeners();
  }
}