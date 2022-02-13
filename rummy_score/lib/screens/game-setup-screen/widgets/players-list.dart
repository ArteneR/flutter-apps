import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rummy_score/data/games-data.dart';
import 'package:rummy_score/data/players-data.dart';
import 'package:rummy_score/screens/game-setup-screen/widgets/player-tile.dart';

class PlayersList extends StatelessWidget {
  const PlayersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PlayersData>(
      builder: (context, playersData, child) {
        return ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final player = playersData.players[index];

            return PlayerTile(
              playerName: player.name,
              deleteCallback: () {
                playersData.removePlayer(player);
              },
            );
          },
          itemCount: playersData.playersCount,
        );
      },
    );
  }
}
