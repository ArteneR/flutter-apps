import 'package:flutter/material.dart';

class ExistingPlayerTile extends StatelessWidget {
  final String playerName;
  final void Function() selectCallback;

  const ExistingPlayerTile({
    Key? key,
    required this.playerName,
    required this.selectCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: selectCallback,
      title: Text(
        playerName,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
      ),
    );
  }
}
