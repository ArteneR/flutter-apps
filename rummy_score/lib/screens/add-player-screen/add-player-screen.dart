import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rummy_score/data/games-data.dart';
import 'package:rummy_score/data/players-data.dart';
import 'package:rummy_score/models/player.dart';
import 'package:rummy_score/widgets/button-primary-default.dart';
import 'package:rummy_score/screens/add-player-screen/widgets/existing-players-list.dart';

class AddPlayerScreen extends StatelessWidget {
  String playerName = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(50.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10.0),
            topRight: Radius.circular(10.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const Text('Add Player'),
            const SizedBox(
              height: 30.0,
            ),
            const Text('New player name'),
            TextField(
              decoration: const InputDecoration(
                filled: true,
                fillColor: Color(0xFFF7F7F7),
                hintText: "Enter player name",
              ),
              onChanged: (newPlayerName) {
                playerName = newPlayerName;
              },
            ),
            ButtonPrimaryDefault(
              text: 'Add Player',
              onPressed: () {
                Provider.of<PlayersData>(context, listen: false)
                    .addPlayer(playerName);
                Player? addedPlayer =
                    Provider.of<PlayersData>(context, listen: false)
                        .getLatestPlayer();
                Provider.of<GamesData>(context, listen: false)
                    .addPlayer(addedPlayer);
                print(
                    Provider.of<GamesData>(context, listen: false).currentGame);
                Navigator.pop(context);
              },
            ),
            Visibility(
              visible: Provider.of<GamesData>(context)
                  .currentGame!
                  .players
                  .isNotEmpty,
              // TODO: visible -> AND not one of the already added players to the game
              child: Column(
                children: const <Widget>[
                  SizedBox(
                    height: 30.0,
                  ),
                  Text('or'),
                  SizedBox(
                    height: 30.0,
                  ),
                  Text('Choose an existing player'),
                  ExistingPlayersList(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
