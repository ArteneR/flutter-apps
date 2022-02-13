import 'package:flutter/material.dart';

class GamesListEmpty extends StatelessWidget {
  const GamesListEmpty({
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
          'No games available to display!',
          style: TextStyle(
            color: Color(0xFF9D9D9D),
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
    );
  }
}
