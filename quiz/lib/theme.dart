import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData;
  String _font;

  ThemeProvider()
      : _themeData = ThemeData.light(),
        _font = 'Roboto';

  ThemeData get themeData => _themeData;
  String get font => _font;

  void setTheme(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }

  void setFont(String font) {
    _font = font;
    notifyListeners();
  }
}
