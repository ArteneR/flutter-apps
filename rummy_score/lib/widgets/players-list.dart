import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rummy_score/models/data.dart';
import 'package:rummy_score/widgets/player-tile.dart';

class PlayersList extends StatelessWidget {
  const PlayersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Data>(
      builder: (context, data, child) {
        return ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final player = data.players[index];

            return PlayerTile(
              playerName: player.name,
              deleteCallback: () {
                data.removePlayer(player);
              },
            );
          },
          itemCount: data.playersCount,
        );
      },
    );
  }
}
