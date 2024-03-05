import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  useMaterial3: true,

  brightness: Brightness.light,
  primaryColor: Colors.black, // Replace with your desired color

  // Additional theme properties
  // primaryTextTheme: GoogleFonts.poppinsTextTheme(),
  fontFamily: GoogleFonts.poppins().fontFamily,
  textTheme: TextTheme(
    bodyLarge: TextStyle(color: Colors.black), // Text color
  ),
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white, // App bar color
  ),
  // ... other properties
);
