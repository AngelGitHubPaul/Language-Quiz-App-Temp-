import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';

class Storage {
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/coins.txt');
  }

  Future<File> writeCounter(int coins) async {
    final file = await _localFile;
    // Write the file
    return file.writeAsString('$coins');
  }

  Future<int> readCounter() async {
    try {
      final file = await _localFile;
      // Read the file
      final contents = await file.readAsString();

      return int.parse(contents);
    } catch (e) {
      // If encountering an error, return 0
      return 0;
    }
  }
}

class MyCurrency with ChangeNotifier {
  int _amount = 0;
  int get amount => _amount;
  final storage = Storage();

  void addCurrency(int value) {
    _amount += value;
    storage.writeCounter(_amount);
    notifyListeners();
  }

  void subtractCurrency(int value) {
    _amount -= value;
    storage.writeCounter(_amount);
    notifyListeners();
  }

  Future<void> loadCounter() async {
    final int counter = await storage.readCounter();
    _amount = counter;
    notifyListeners();
  }
}
