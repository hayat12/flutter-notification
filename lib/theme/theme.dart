import 'package:flutter/material.dart';
import 'package:todo/theme/custom_colors.dart';

CustomTheme currentTheme = CustomTheme();

class CustomTheme with ChangeNotifier {
  static bool isDarkTheme = true;
  ThemeMode get currentTheme => isDarkTheme ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }

  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Colors.lightBlue,
      backgroundColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      errorColor: Colors.redAccent,
      textTheme: const TextTheme(
        headline1: TextStyle(color: Colors.black),
        headline2: TextStyle(color: Colors.black),
        bodyText1: TextStyle(color: Colors.black),
        bodyText2: TextStyle(color: Colors.black),
      ),
    );
  }

  static ThemeData get darkTheme {
    final darkPrimary = Colors.grey[300]; //CustomColors.darkPrimary;

    return ThemeData(
      appBarTheme: const AppBarTheme(backgroundColor: Colors.grey),
      primaryColor: darkPrimary,
      backgroundColor: darkPrimary,
      scaffoldBackgroundColor: darkPrimary,
      errorColor: Colors.yellowAccent,
      textTheme: const TextTheme(
        headline1: TextStyle(color: Colors.white),
        headline2: TextStyle(color: Colors.blue),
        bodyText1: TextStyle(color: Colors.purple),
        bodyText2: TextStyle(color: Colors.black),
      ),
    );
  }
}
