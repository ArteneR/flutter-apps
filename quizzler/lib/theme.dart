import 'package:flutter/material.dart';

ThemeData theme = ThemeData(
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      primary: Colors.white,
      backgroundColor: Colors.blue,
      onSurface: Colors.grey, // when disabled
      textStyle: TextStyle(
        fontSize: 20.0,
      ),
    ),
  ),
);
