import 'package:flutter/material.dart';

// ignore: empty_constructor_bodies
class Theme {
  final String themeName;
  // ignore: prefer_typing_uninitialized_variables
  final color;
  Theme({required this.color, required this.themeName});
}

class ShopTheme {
  final String themeName;
  // ignore: prefer_typing_uninitialized_variables
  final color;
  final String price;
  ShopTheme(
      {required this.color, required this.themeName, required this.price});
}

class ThemesModel with ChangeNotifier {
  // ignore: prefer_final_fields
  List<ShopTheme> _shopThemesList = [
    ShopTheme(themeName: 'D.Orange', color: Colors.deepOrange, price: '30'),
    ShopTheme(themeName: 'Orange', color: Colors.orange, price: '30'),
    ShopTheme(themeName: 'Amber', color: Colors.amber, price: '30'),
    ShopTheme(themeName: 'Yellow', color: Colors.yellow, price: '30'),
    ShopTheme(themeName: 'Lime', color: Colors.limeAccent, price: '30'),
    ShopTheme(
        themeName: 'L.Green', color: Colors.lightGreenAccent, price: '30'),
    ShopTheme(themeName: 'Teal', color: Colors.teal, price: '30'),
    ShopTheme(themeName: 'Cyan', color: Colors.cyan, price: '30'),
    ShopTheme(themeName: 'L.Blue', color: Colors.lightBlue, price: '30'),
    ShopTheme(themeName: 'Indigo', color: Colors.indigo, price: '30'),
    ShopTheme(themeName: 'Indigo', color: Colors.indigo, price: '30'),
    ShopTheme(themeName: 'Purple', color: Colors.purple, price: '30'),
    ShopTheme(themeName: 'Brown', color: Colors.brown, price: '30'),
    ShopTheme(themeName: 'Grey', color: Colors.grey, price: '30'),
  ];
  List<ShopTheme> get shopThemesList => _shopThemesList;
  // ignore: prefer_final_fields
  List<Theme> _myThemes = [
    Theme(themeName: 'Sakura', color: Colors.pink),
    Theme(themeName: 'Red', color: Colors.red),
    Theme(themeName: 'Green', color: Colors.green),
    Theme(themeName: 'Blue', color: Colors.blue),
  ];
  List<Theme> get myThemes => _myThemes;

  void addCThemes(Theme themes) {
    _myThemes.add(themes);
    notifyListeners();
  }
}
