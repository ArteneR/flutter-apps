import 'package:flutter/material.dart';

class GameTile extends StatelessWidget {
  final String gameName;
  final void Function() selectCallback;

  const GameTile({
    Key? key,
    required this.gameName,
    required this.selectCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: selectCallback,
      title: Text(
        gameName,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
      ),
    );
  }
}
