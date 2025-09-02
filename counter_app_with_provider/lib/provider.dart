import 'package:flutter/material.dart';

class CounterClass extends ChangeNotifier {
  int counter = 0;

  increment() {
    counter++;
    notifyListeners();
  }

  decrement() {
    if (counter > 0) {
      counter--;
    }
    notifyListeners();
  }
}
