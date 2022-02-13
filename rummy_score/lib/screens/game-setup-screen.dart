import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rummy_score/models/data.dart';
import 'package:rummy_score/widgets/button-primary-default.dart';
import 'package:rummy_score/widgets/content-box.dart';
import 'package:rummy_score/widgets/game-players-setup.dart';

class GameSetupScreen extends StatefulWidget {
  const GameSetupScreen({Key? key}) : super(key: key);

  @override
  State<GameSetupScreen> createState() => _GameSetupScreenState();
}

class _GameSetupScreenState extends State<GameSetupScreen> {
  final PLAYERS_LIMIT = 4;
  final PLAYERS_MINIMUM = 2;

  TextEditingController _gameName = TextEditingController(
    text: 'Game #1',
  );

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
                  onPressed: (Provider.of<Data>(context).playersCount >=
                              PLAYERS_MINIMUM) &&
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

  void startGame() async {
    // Game game = await Provider.of<Data>(context, listen: false)
    //     .createGame(name: _gameName.text);
    // Utils.goToScreen(context, Routes.viewGameScreen,
    //     arguments: RouteArguments(game: game));
  }
}
