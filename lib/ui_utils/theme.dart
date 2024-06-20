import 'package:flutter/material.dart';

ThemeData appLightTheme = ThemeData.light().copyWith(
  primaryColor: Colors.white,
  scaffoldBackgroundColor: Colors.white,
  textTheme: const TextTheme().copyWith(
    titleMedium: const TextStyle(color: Colors.white, fontSize: 14),
    labelLarge: const TextStyle(fontSize: 16, color: Colors.black),
    titleLarge: const TextStyle(color: Colors.white, fontSize: 18),
    bodyMedium: const TextStyle(color: Colors.black, fontSize: 14),
  ),
);
