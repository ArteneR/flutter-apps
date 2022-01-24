import 'package:flutter/material.dart';

class ColorsPalette {
  static MaterialColor getPalette(String palette) {
    var color;
    switch (palette) {
      case 'DARK_RED':
        color = 0xFFC12121; // #C12121
        break;
      default:
        color = 0xFFC12121; // #C12121
    }

    return generatePaletteFrom(color);
  }

  static MaterialColor generatePaletteFrom(int color) {
    return MaterialColor(
      color,
      <int, Color>{
        50: Color(color).withOpacity(0.1), //10%
        100: Color(color).withOpacity(0.2), //20%
        200: Color(color).withOpacity(0.3), //30%
        300: Color(color).withOpacity(0.4), //40%
        400: Color(color).withOpacity(0.5), //50%
        500: Color(color).withOpacity(0.6), //60%
        600: Color(color).withOpacity(0.7), //70%
        700: Color(color).withOpacity(0.8), //80%
        800: Color(color).withOpacity(0.9), //90%
        900: Color(color).withOpacity(1.0), //100%
      },
    );
  }
}
