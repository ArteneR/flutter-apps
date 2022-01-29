import 'package:flutter/material.dart';
import 'package:rummy_score/models/game.dart';
import 'package:rummy_score/models/player.dart';

class Data extends ChangeNotifier {
  Map data = {'test': 'Test string'};
  late List<Game> _games;
  late List<Player> _players;
  late Game game1;

  List<Game> get games {
    return _games;
  }

  List<Player> get players {
    return _players;
  }

  Game createGame({name}) {
    game1 = Game(name: name);
    // add to games
    // save in DB
    return game1;
  }

  Game getGame(id) {
    return game1;
  }

  void updateData(input) {
    data = {'test': input};
    notifyListeners();
  }
}
