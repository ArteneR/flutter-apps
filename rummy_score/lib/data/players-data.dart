import 'package:flutter/material.dart';
import 'package:rummy_score/models/player.dart';

class PlayersData extends ChangeNotifier {
  late List<Player> _players = [];

  List<Player> get players {
    return _players;
  }

  int get playersCount {
    return _players.length;
  }

  Player? getPlayer(id) {
    final index = _players.indexWhere((player) => player.id == id);
    return index >= 0 ? _players[index] : null;
  }

  Player? getLatestPlayer() {
    final index = _players.length - 1;
    return index >= 0 ? _players[index] : null;
  }

  void addPlayer(name) {
    final player = Player(name: name);
    _players.add(player);
    notifyListeners();
  }

  void removePlayer(Player player) {
    _players.remove(player);
    notifyListeners();
  }
}
