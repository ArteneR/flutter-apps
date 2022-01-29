import 'package:flutter/material.dart';
import 'package:rummy_score/models/game.dart';
import 'package:rummy_score/models/player.dart';

class Data extends ChangeNotifier {
  Map data = {'test': 'Test string'};

  late List<Game> _games;
  late List<Player> _players;

  List<Game> get games {
    return _games;
  }

  List<Player> get players {
    return _players;
  }

  void createGame() {
    var game = Game();
    
  }

  void updateData(input) {
    data = {'test': input};
    notifyListeners();
  }
}
