import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rummy_score/data/games-data.dart';
import 'package:rummy_score/data/players-data.dart';
import 'package:rummy_score/screens/add-player-screen/add-player-screen.dart';
import 'package:rummy_score/services/constants.dart';
import 'package:rummy_score/widgets/button-primary-default.dart';
import 'package:rummy_score/screens/game-setup-screen/widgets/players-list-empty.dart';
import 'package:rummy_score/screens/game-setup-screen/widgets/players-list.dart';

class GamePlayersSetup extends StatelessWidget {
  const GamePlayersSetup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer2<PlayersData, GamesData>(
      builder: (context, playersData, gamesData, child) {
        return Column(
          children: <Widget>[
            Visibility(
              visible: playersData.players.isNotEmpty,
              child: const PlayersList(),
            ),
            Visibility(
              visible: playersData.players.isEmpty,
              child: const PlayersListEmpty(),
            ),
            Center(
              child: ButtonPrimaryDefault(
                text: 'Add Player',
                onPressed: (gamesData.currentGame!.players.length <
                        kPlayersLimit)
                    ? () => showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (context) => SingleChildScrollView(
                            child: Container(
                              padding: EdgeInsets.only(
                                bottom:
                                    MediaQuery.of(context).viewInsets.bottom,
                              ),
                              child: AddPlayerScreen(),
                            ),
                          ),
                        )
                    : null,
              ),
            ),
          ],
        );
      },
    );
  }
}
