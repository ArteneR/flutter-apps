import 'package:flutter/material.dart';

class PlayerInput extends StatelessWidget {
  TextEditingController playerTFController = TextEditingController();

  Function? onDelete;
  PlayerInput({Key? key, String? name, this.onDelete}) : super(key: key) {
    playerTFController.text = name ?? 'New Player';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 20.0,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: TextField(
              controller: playerTFController,
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xFFF7F7F7),
                hintText: "Enter player name",
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              onDelete!(this);
            },
          ),
        ],
      ),
    );
  }
}
