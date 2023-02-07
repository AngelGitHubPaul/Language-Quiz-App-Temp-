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
    ShopTheme(themeName: 'D.Orange', color: Colors.deepOrange, price: 'bought'),
    ShopTheme(themeName: 'Orange', color: Colors.orange, price: 'bought'),
    ShopTheme(themeName: 'Amber', color: Colors.amber, price: 'bought'),
    ShopTheme(themeName: 'Yellow', color: Colors.yellow, price: 'bought'),
    ShopTheme(themeName: 'Lime', color: Colors.limeAccent, price: 'bought'),
    ShopTheme(
        themeName: 'L.Green', color: Colors.lightGreenAccent, price: 'bought'),
    ShopTheme(themeName: 'Teal', color: Colors.teal, price: 'bought'),
    ShopTheme(themeName: 'Cyan', color: Colors.cyan, price: 'bought'),
    ShopTheme(themeName: 'L.Blue', color: Colors.lightBlue, price: 'bought'),
    ShopTheme(themeName: 'Indigo', color: Colors.indigo, price: 'bought'),
    ShopTheme(themeName: 'Indigo', color: Colors.indigo, price: 'bought'),
    ShopTheme(themeName: 'Purple', color: Colors.purple, price: 'bought'),
    ShopTheme(themeName: 'Brown', color: Colors.brown, price: 'bought'),
    ShopTheme(themeName: 'Grey', color: Colors.grey, price: 'bought'),
  ];
  List<ShopTheme> get shopThemesList => _shopThemesList;
  // ignore: prefer_final_fields
  List<Theme> _myThemes = [
    Theme(themeName: 'Sakura', color: Colors.pink),
    Theme(themeName: 'Red', color: Colors.red),
    Theme(themeName: 'Green', color: Colors.green),
    Theme(themeName: 'Blue', color: Colors.blue),
    Theme(themeName: 'D.Orange', color: Colors.deepOrange),
    Theme(themeName: 'Orange', color: Colors.orange),
    Theme(themeName: 'Amber', color: Colors.amber),
    Theme(themeName: 'Yellow', color: Colors.yellow),
    Theme(themeName: 'Lime', color: Colors.lime),
    Theme(themeName: 'L.Green', color: Colors.lightGreen),
    Theme(themeName: 'Teal', color: Colors.teal),
    Theme(themeName: 'Cyan', color: Colors.cyan),
    Theme(themeName: 'L.Blue', color: Colors.lightBlue),
    Theme(themeName: 'Indigo', color: Colors.indigo),
    Theme(themeName: 'Indigo', color: Colors.indigo),
    Theme(themeName: 'Purple', color: Colors.purple),
    Theme(themeName: 'Brown', color: Colors.brown),
    Theme(themeName: 'Grey', color: Colors.grey)
  ];
  List<Theme> get myThemes => _myThemes;

  final List<Theme> _selectedThemes = [
    Theme(themeName: 'Sakura', color: Colors.pink)
  ];
  List<Theme> get selectedThemes => _selectedThemes;

  void replaceTheme(Theme theme) {
    _selectedThemes.clear();
    _selectedThemes.add(theme);
    notifyListeners();
  }
}
