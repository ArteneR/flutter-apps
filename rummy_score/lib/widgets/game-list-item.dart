import 'package:flutter/material.dart';

class GameListInput extends StatelessWidget {
  late String name;

  GameListInput({Key? key, String? name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(name),
    );
  }
}
