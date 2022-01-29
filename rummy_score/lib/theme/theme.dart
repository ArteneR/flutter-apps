import 'package:flutter/material.dart';
import 'package:rummy_score/theme/colors-palette.dart';

class AppTheme {
  ThemeData get theme => ThemeData(
        primarySwatch: ColorsPalette.getPalette('DARK_RED'),
      );
}
