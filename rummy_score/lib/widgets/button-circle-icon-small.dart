import 'package:flutter/material.dart';
import 'package:rummy_score/services/constants.dart';

class ButtonCircleIconSmall extends StatelessWidget {
  final Icon icon;
  final Function? onPressed;

  ButtonCircleIconSmall({required this.icon, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (onPressed != null) ? () => onPressed!() : null,
      child: icon,
      style: ButtonStyle(
        shape: MaterialStateProperty.all(const CircleBorder()),
        padding: MaterialStateProperty.all(const EdgeInsets.all(10)),
        backgroundColor: MaterialStateProperty.all(kColorPrimary),
        overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
          if (states.contains(MaterialState.pressed)) {
            return Colors.red;
          }
        }),
      ),
    );
  }
}
