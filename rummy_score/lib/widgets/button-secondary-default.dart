import 'package:flutter/material.dart';
import 'package:rummy_score/services/constants.dart';

class ButtonSecondaryDefault extends StatelessWidget {
  final String text;
  final Function? onPressed;

  ButtonSecondaryDefault({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Text(
          text,
          style: const TextStyle(color: kColorPrimary),
        ),
      ),
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        side: const BorderSide(
          width: 2.0,
          color: kColorPrimary,
        ),
      ),
      onPressed: (onPressed != null) ? () => onPressed!() : null,
    );
  }
}
