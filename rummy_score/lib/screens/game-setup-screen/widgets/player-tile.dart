import 'package:flutter/material.dart';

class PlayerTile extends StatelessWidget {
  final String playerName;
  final void Function() deleteCallback;

  const PlayerTile({
    Key? key,
    required this.playerName,
    required this.deleteCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        playerName,
      ),
      trailing: IconButton(
        icon: const Icon(Icons.clear),
        onPressed: deleteCallback,
      ),
    );
  }
}
