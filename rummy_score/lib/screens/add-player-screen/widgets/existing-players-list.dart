import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rummy_score/data/games-data.dart';
import 'package:rummy_score/data/players-data.dart';
import 'package:rummy_score/screens/add-player-screen/widgets/existing-player-tile.dart';
import 'package:rummy_score/screens/game-setup-screen/widgets/player-tile.dart';

class ExistingPlayersList extends StatelessWidget {
  const ExistingPlayersList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<PlayersData, GamesData>(
      builder: (context, playersData, gamesData, child) {
        final gamePlayers = gamesData.currentGame!.players;
        final availablePlayers = playersData.players
            .where((player) => !gamePlayers.contains(player))
            .toList();

        return ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            final player = availablePlayers[index];

            return ExistingPlayerTile(
              playerName: player.name,
              selectCallback: () {
                print('Selected player: $player');
                Provider.of<GamesData>(context, listen: false)
                    .addPlayer(player);
                print(
                    Provider.of<GamesData>(context, listen: false).currentGame);
                Navigator.pop(context);
              },
            );
          },
          itemCount: availablePlayers.length,
        );
      },
    );
  }
}
