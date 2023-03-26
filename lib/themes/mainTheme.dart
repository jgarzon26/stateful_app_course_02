
import 'package:flutter/material.dart';

ThemeData buildDefaultTheme() {
  return ThemeData(
    primaryColor: Colors.blue,
    textTheme: const TextTheme(
      headlineSmall: TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}