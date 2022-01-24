import 'package:flutter/material.dart';

class Utils {
  static void goToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => screen,
      ),
    );
  }

  static void goToPreviousScreen(BuildContext context) {
    Navigator.pop(context);
  }
}
