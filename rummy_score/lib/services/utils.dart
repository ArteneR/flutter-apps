import 'package:flutter/material.dart';

class Utils {
  // static void goToScreen(BuildContext context, Widget screen) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => screen,
  //     ),
  //   );
  // }

  static void goToScreen(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }

  static void goToPreviousScreen(BuildContext context) {
    Navigator.pop(context);
  }
}
