import 'package:flutter/material.dart';

class AppConfigUI {
  AppConfigUI._();
  static const MaterialColor _primarySwatch = MaterialColor(0xff569590, {
    50: Color(0xff7a8682),
    100: Color(0xff6d7773),
    200: Color(0xff5f6865),
    300: Color(0xff525956),
    400: Color(0xff444b48),
    500: Color(0xff363c3a),
    600: Color(0xff292d2b),
    700: Color(0xff1b1e1d),
    800: Color(0xff0e0f0e),
    900: Color(0xff000000),
  });
  static final ThemeData theme = ThemeData(
      primarySwatch: _primarySwatch,
      primaryColor: const Color(0XFF569590),
      primaryColorLight: const Color(0xffffbc66),
      inputDecorationTheme: const InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        labelStyle: TextStyle(color: Colors.black),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ));
}
