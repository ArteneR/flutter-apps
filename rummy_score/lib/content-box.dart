import 'package:flutter/material.dart';

class ContentBox extends StatelessWidget {
  final Widget child;
  final Color color;

  const ContentBox({
    required this.child,
    this.color = const Color(0xFFFFFFFF),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 20.0,
      ),
      decoration: BoxDecoration(
        color: color,
        border: const Border.symmetric(
          vertical: BorderSide.none,
          horizontal: BorderSide(
            width: 1.0,
            color: Color(0xFFDDDDDD),
          ),
        ),
      ),
      child: child,
    );
  }
}
