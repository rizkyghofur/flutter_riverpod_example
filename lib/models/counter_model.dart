import 'package:flutter/material.dart';

class CounterModel extends ChangeNotifier {
  int counter;

  CounterModel({
    required this.counter,
  });

  /// Increment the counter by one.
  ///
  /// This causes a call to [notifyListeners], so any listeners to this model will
  /// be notified that the model has changed.
  void increment() {
    counter++;
    notifyListeners();
  }

  /// Decrement the counter by one.
  ///
  /// This causes a call to [notifyListeners], so any listeners to this model will
  /// be notified that the model has changed.
  void decrement() {
    counter--;
    notifyListeners();
  }
}
