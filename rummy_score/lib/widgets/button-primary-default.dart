import 'package:flutter/material.dart';

class ButtonPrimaryDefault extends StatelessWidget {
  final String text;
  final Function? onPressed;

  ButtonPrimaryDefault({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Text(text),
      ),
      onPressed: (onPressed != null) ? () => onPressed!() : null,
    );
  }
}
