import 'package:flutter/material.dart';

class Data extends ChangeNotifier {
  Map data = {'test': 'Test string'};

  void updateData(input) {
    data = {'test': input};
    notifyListeners();
  }
}
