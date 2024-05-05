import 'package:crowd_math/constants/colors.dart';
import 'package:flutter/material.dart';

ThemeData lightThemeData(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: kPrimaryColor,
    appBarTheme: const AppBarTheme(
      color: Colors.white,
    ),
    scaffoldBackgroundColor: Colors.white,
    focusColor: Colors.black,
    colorScheme: const ColorScheme.light().copyWith(
        onBackground: kPrimaryColor,
        inversePrimary: kPrimaryColor),
  );
}