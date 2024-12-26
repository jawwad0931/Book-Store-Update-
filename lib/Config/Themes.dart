import 'package:bookstore_app/Config/Colors.dart';
import 'package:flutter/material.dart';

var lightTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme(
    brightness: Brightness.light,
    primary: primaryColor,
    onPrimary: backgroundColor,
    secondary: secondaryColor,
    onSecondary: backgroundColor,
    error: Colors.red,
    onError: fontColor,
    surface: backgroundColor,
    onSurface: fontColor,
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
        fontFamily: "Poppins", fontSize: 30, fontWeight: FontWeight.w600),
    headlineMedium: TextStyle(
        fontFamily: "Poppins", fontSize: 20, fontWeight: FontWeight.w600),
    bodyMedium: TextStyle(
        fontFamily: "Poppins", fontSize: 15, fontWeight: FontWeight.w600),
    bodySmall: TextStyle(
        fontFamily: "Poppins", fontSize: 12, fontWeight: FontWeight.w600),
    labelLarge: TextStyle(
        fontFamily: "Poppins", fontSize: 18, fontWeight: FontWeight.w400),
    labelMedium: TextStyle(
        fontFamily: "Poppins", fontSize: 15, fontWeight: FontWeight.w600),
    labelSmall: TextStyle(
        fontFamily: "Poppins", fontSize: 12, fontWeight: FontWeight.w600),
  ),
);
