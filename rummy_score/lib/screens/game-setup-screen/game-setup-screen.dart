import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rummy_score/data/games-data.dart';
import 'package:rummy_score/routes/routes.dart';
import 'package:rummy_score/services/utils.dart';
import 'package:rummy_score/widgets/button-primary-default.dart';
import 'package:rummy_score/widgets/content-box.dart';
import 'package:rummy_score/screens/game-setup-screen/widgets/game-players-setup.dart';
import 'package:rummy_score/services/constants.dart';

class GameSetupScreen extends StatefulWidget {
  @override
  State<GameSetupScreen> createState() => _GameSetupScreenState();
}

class _GameSetupScreenState extends State<GameSetupScreen> {
  late TextEditingController _gameName;
  late GamesData gamesData;

  @override
  void initState() {
    gamesData = Provider.of<GamesData>(context, listen: false);
    super.initState();
    _gameName = TextEditingController(text: gamesData.currentGame!.name);
  }

  @override
  void dispose() {
    _gameName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      appBar: AppBar(
        title: const Text('Start a new game'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(
            height: 30.0,
          ),
          Expanded(
            child: ContentBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text('Game name'),
                  TextField(
                    controller: _gameName,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFF7F7F7),
                      hintText: "Enter game name",
                    ),
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  const Text('Players'),
                  const GamePlayersSetup(),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            child: ValueListenableBuilder<TextEditingValue>(
              valueListenable: _gameName,
              builder: (context, value, child) {
                return ButtonPrimaryDefault(
                  text: 'Start Game',
                  onPressed: (Provider.of<GamesData>(context)
                                  .currentGame!
                                  .players
                                  .length >=
                              kPlayersMinimum) &&
                          _gameName.text.isNotEmpty
                      ? () => startGame()
                      : null,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void startGame() {
    gamesData.currentGame!.name = _gameName.text;
    Utils.goToScreen(context, Routes.viewGameScreen);
  }
}
