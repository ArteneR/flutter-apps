import 'package:flutter/material.dart';

class ScoresListEmpty extends StatelessWidget {
  const ScoresListEmpty({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 40.0,
          horizontal: 20.0,
        ),
        child: Text(
          'No players available to set the score to!',
          style: TextStyle(
            color: Color(0xFF9D9D9D),
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
