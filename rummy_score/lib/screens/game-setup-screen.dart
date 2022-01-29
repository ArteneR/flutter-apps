import 'package:flutter/material.dart';
import 'package:rummy_score/services/utils.dart';
import 'package:rummy_score/routes.dart';
import 'package:rummy_score/widgets/content-box.dart';
import 'package:rummy_score/widgets/player-input.dart';

class GameSetupScreen extends StatefulWidget {
  const GameSetupScreen({Key? key}) : super(key: key);

  @override
  State<GameSetupScreen> createState() => _GameSetupScreenState();
}

class _GameSetupScreenState extends State<GameSetupScreen> {
  final PLAYERS_LIMIT = 4;
  final PLAYERS_MINIMUM = 2;
  List<PlayerInput> players = [];

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
                  Visibility(
                    visible: players.isNotEmpty,
                    child: Column(
                      children: players,
                    ),
                  ),
                  Visibility(
                    visible: players.isEmpty,
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 40.0,
                          horizontal: 20.0,
                        ),
                        child: Text(
                          'No players have been added yet!',
                          style: TextStyle(
                            color: Color(0xFF9D9D9D),
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: ElevatedButton(
                      child: const Text('Add Player'),
                      onPressed: (players.length < PLAYERS_LIMIT)
                          ? () {
                              addPlayer();
                            }
                          : null,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            child: ValueListenableBuilder<TextEditingValue>(
              valueListenable: _gameName,
              builder: (context, value, child) {
                return ElevatedButton(
                  child: const Text('Start Game'),
                  onPressed: (players.length >= PLAYERS_MINIMUM) &&
                          _gameName.text.isNotEmpty
                      ? () {
                          // TODO: Save game and Players in DB
                          Utils.goToScreen(context, Routes.viewGameScreen);
                        }
                      : null,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void addPlayer() {
    setState(() {
      if (players.length < PLAYERS_LIMIT) {
        players.add(
          PlayerInput(onDelete: deletePlayer),
        );
      }
    });
  }

  void deletePlayer(player) {
    setState(() {
      players.removeAt(players.indexOf(player));
    });
  }
}
