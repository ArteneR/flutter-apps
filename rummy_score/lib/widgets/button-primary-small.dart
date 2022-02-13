import 'package:flutter/material.dart';

class ButtonPrimarySmall extends StatelessWidget {
  final String text;
  final Function? onPressed;

  ButtonPrimarySmall({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Text(text),
      ),
      onPressed: (onPressed != null) ? () => onPressed!() : null,
    );
  }
}
