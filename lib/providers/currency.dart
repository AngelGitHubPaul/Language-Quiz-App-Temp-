import 'package:flutter/foundation.dart';

class MyCurrency with ChangeNotifier {
  int _amount = 0;

  int get amount => _amount;

  void addCurrency(int value) {
    _amount += value;
    notifyListeners();
  }

  void subtractCurrency(int value) {
    _amount -= value;
    notifyListeners();
  }
}
