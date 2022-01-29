import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Utils {
  static void goToScreen(BuildContext context, String routeName) {
    Navigator.pushNamed(context, routeName);
  }

  static void goToPreviousScreen(BuildContext context) {
    Navigator.pop(context);
  }

  static Future<void> openLink(String link) async {
    try {
      await launch(link);
    } catch (error) {
      print(error);
      throw 'Could not open link: $link';
    }
  }
}
