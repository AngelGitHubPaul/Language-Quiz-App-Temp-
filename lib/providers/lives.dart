import 'package:flutter/foundation.dart';

class Lives with ChangeNotifier {
  int _lives = 3;

  int get lives => _lives;

  void decreaseLives() {
    _lives--;
    notifyListeners();
  }

  void resetLives() {
    _lives = 3;
    notifyListeners();
  }
}
