import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  useMaterial3: true,

  brightness: Brightness.dark,
  primaryColor: Colors.black, // Replace with your desired color

  // Additional theme properties
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.white), // Text color
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.grey, // App bar color
  ),
  // ... other properties
);
