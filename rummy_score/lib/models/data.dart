import 'package:flutter/material.dart';
import 'package:rummy_score/models/game.dart';
import 'package:rummy_score/models/player.dart';

class Data extends ChangeNotifier {
  late List<Game> _games;
  late List<Player> _players = [];

  List<Game> get games {
    return _games;
  }

  List<Player> get players {
    return _players;
  }

  Game? getGame(id) {
    final index = _games.indexWhere((game) => game.id == id);
    return index >= 0 ? _games[index] : null;
  }

  Player? getPlayer(id) {
    final index = _players.indexWhere((player) => player.id == id);
    return index >= 0 ? _players[index] : null;
  }

  void addGame(name, players) {
    final game = Game(name: name, players: players);
    _games.add(game);
    notifyListeners();
  }

  void addPlayer(name) {
    print('Added player: $name');
    final player = Player(name: name);
    _players.add(player);
    notifyListeners();
  }
}
