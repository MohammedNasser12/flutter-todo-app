import 'package:flutter/material.dart';

class ApplicationTheme {
  static ThemeData themeDataLight = ThemeData(
    primaryColor: Color.fromRGBO(108, 154, 216, 1),
    appBarTheme: AppBarTheme(backgroundColor: Colors.transparent),
    scaffoldBackgroundColor: Color.fromRGBO(225, 235, 221, 1),
    textTheme: TextTheme(
        titleLarge: TextStyle(
            fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 22),
        titleMedium: TextStyle(
            fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 18),
        bodyLarge: TextStyle(
            fontFamily: "Poppins", fontWeight: FontWeight.w500, fontSize: 20),
        bodyMedium: TextStyle(
            fontFamily: "Poppins", fontWeight: FontWeight.w500, fontSize: 18),
        bodySmall: TextStyle(
            fontFamily: "Poppins", fontWeight: FontWeight.bold, fontSize: 14)),
  );
}
