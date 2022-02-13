import 'package:flutter/material.dart';
import 'package:rummy_score/models/game.dart';
import 'package:rummy_score/models/player.dart';

class GamesData extends ChangeNotifier {
  late List<Game> _games = [];
  Game? currentGame;

  List<Game> get games {
    return _games;
  }

  Game? getGame(id) {
    final index = _games.indexWhere((game) => game.id == id);
    return index >= 0 ? _games[index] : null;
  }

  Game? getLatestGame() {
    final index = _games.length - 1;
    return index >= 0 ? _games[index] : null;
  }

  void addGame({name, players}) {
    final game = Game(name: name, players: players);
    _games.add(game);
    currentGame = game;
    notifyListeners();
  }
}
