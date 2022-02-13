import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rummy_score/data/games-data.dart';
import 'package:rummy_score/data/players-data.dart';
import 'package:rummy_score/screens/add-player-screen.dart';
import 'package:rummy_score/services/constants.dart';
import 'package:rummy_score/widgets/button-primary-default.dart';
import 'package:rummy_score/widgets/players-list-empty.dart';
import 'package:rummy_score/widgets/players-list.dart';

class GamePlayersSetup extends StatelessWidget {
  const GamePlayersSetup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Visibility(
          visible: Provider.of<PlayersData>(context).players.isNotEmpty,
          child: const PlayersList(),
        ),
        Visibility(
          visible: Provider.of<PlayersData>(context).players.isEmpty,
          child: const PlayersListEmpty(),
        ),
        Center(
          child: ButtonPrimaryDefault(
            text: 'Add Player',
            onPressed: (Provider.of<PlayersData>(context).playersCount <
                    kPlayersLimit)
                ? () => showModalBottomSheet(
                      context: context,
                      isScrollControlled: true,
                      builder: (context) => SingleChildScrollView(
                        child: Container(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom,
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
  }
}
