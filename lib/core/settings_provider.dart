import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  String currentLanaguageCode = 'ar';
  ThemeMode currentThemeMode = ThemeMode.light;
  void chanageLanaguageCode(String newLanaguageCode) {
    if (currentLanaguageCode == newLanaguageCode) return;
    currentLanaguageCode = newLanaguageCode;
    notifyListeners();
  }

  void chanageThemeMode(ThemeMode newThemeMode) {
    if (currentThemeMode == newThemeMode) return;
    currentThemeMode = newThemeMode;
    notifyListeners();
  }

  String getHomeBackGround() {
    return currentThemeMode == ThemeMode.dark
        ? 'assets/images/home_dark_background.png'
        : 'assets/images/background.png';
  }

  bool isDark() {
    return currentThemeMode == ThemeMode.dark;
  }
}
