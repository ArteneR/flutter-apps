import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rummy_score/data/games-data.dart';
import 'package:rummy_score/data/players-data.dart';
import 'package:rummy_score/widgets/existing-player-tile.dart';
import 'package:rummy_score/widgets/player-tile.dart';

class ExistingPlayersList extends StatelessWidget {
  const ExistingPlayersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<PlayersData>(
      builder: (context, playersData, child) {
        return ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final player = playersData.players[index];

            return ExistingPlayerTile(
              playerName: player.name,
              selectCallback: () {
                print('Selected player: $player');
                // TODO: add selected player to the game
              },
            );
          },
          itemCount: playersData.playersCount,
          // TODO: exclude already added game players
        );
      },
    );
  }
}
