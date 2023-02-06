import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

// ignore: empty_constructor_bodies
class Theme {
  final String themeName;
  final String color;
  Theme({required this.color, required this.themeName});
}

class ShopTheme {
  final String themeName;
  final String color;
  final String price;
  ShopTheme(
      {required this.color, required this.themeName, required this.price});
}

class ThemesModel with ChangeNotifier {
  // ignore: prefer_final_fields
  List<ShopTheme> _shopThemesList = [
    ShopTheme(themeName: 'Deep Orange', color: 'deepOrange', price: '30'),
    ShopTheme(themeName: 'Orange', color: 'orange', price: '30'),
    ShopTheme(themeName: 'Amber', color: 'amber', price: '30'),
    ShopTheme(themeName: 'Yellow', color: 'yellow', price: '30'),
    ShopTheme(themeName: 'Lime', color: 'limeAccent', price: '30'),
    ShopTheme(themeName: 'Light Green', color: 'lightGreenAccent', price: '30'),
    ShopTheme(themeName: 'Teal', color: 'teal', price: '30'),
    ShopTheme(themeName: 'Cyan', color: 'cyan', price: '30'),
    ShopTheme(themeName: 'Light Blue', color: 'lightBlue', price: '30'),
    ShopTheme(themeName: 'Indigo', color: 'indigo', price: '30'),
    ShopTheme(themeName: 'Indigo', color: 'indigo', price: '30'),
    ShopTheme(themeName: 'Purple', color: 'purple', price: '30'),
    ShopTheme(themeName: 'Brown', color: 'brown', price: '30'),
    ShopTheme(themeName: 'Grey', color: 'grey', price: '30'),
  ];
  List<ShopTheme> get shopThemesListt => _shopThemesList;
  // ignore: prefer_final_fields
  List<Theme> _myThemes = [
    Theme(themeName: 'Sakura', color: 'pink'),
    Theme(themeName: 'Red', color: 'red'),
    Theme(themeName: 'Blue', color: 'blue'),
    Theme(themeName: 'Green', color: 'green'),
  ];
  List<Theme> get myThemes => _myThemes;

  void addCThemes(Theme themes) {
    _myThemes.add(themes);
    notifyListeners();
  }
}
