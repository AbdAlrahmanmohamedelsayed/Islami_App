import 'package:flutter/material.dart';

class ApplicationsThemeManager {
  static const Color primaryColor = Color(0xffB7935F);
  static const Color darkprimaryColor = Color(0xffFACC1D);
  static ThemeData lightThemeManager = ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Color(0xff242424),
          unselectedItemColor: Color(0xffF8F8F8),
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: primaryColor,
          selectedLabelStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: 'ElMessiri'),
          selectedIconTheme: IconThemeData(size: 40),
          unselectedIconTheme: IconThemeData(size: 30)),
      appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'ElMessiri'),
          backgroundColor: Colors.transparent,
          centerTitle: true),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'ElMessiri'),
        bodyMedium: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w600,
            fontFamily: 'ElMessiri'),
        bodySmall: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.w400,
            fontFamily: 'ElMessiri'),
      ),
      dividerTheme:
          const DividerThemeData(color: primaryColor, thickness: 4, space: 10));
  static ThemeData darkThemeManager = ThemeData(
      primaryColorDark: darkprimaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: darkprimaryColor,
          unselectedItemColor: Color(0xffF8F8F8),
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xff141A2E),
          selectedLabelStyle: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              fontFamily: 'ElMessiri'),
          selectedIconTheme: IconThemeData(size: 40),
          unselectedIconTheme: IconThemeData(size: 30)),
      appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: 'ElMessiri'),
          backgroundColor: Colors.transparent,
          centerTitle: true),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'ElMessiri'),
        bodyMedium: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w600,
            fontFamily: 'ElMessiri'),
        bodySmall: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w400,
            fontFamily: 'ElMessiri'),
      ),
      dividerTheme: const DividerThemeData(
          color: darkprimaryColor, thickness: 3, space: 10));
}
