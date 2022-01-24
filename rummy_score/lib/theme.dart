import 'package:flutter/material.dart';
import 'colors-palette.dart';

class AppTheme {
  ThemeData get theme => ThemeData(
        primarySwatch: ColorsPalette.getPalette('DARK_RED'),
      );
}
