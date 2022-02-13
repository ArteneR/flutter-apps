import 'player.dart';
import 'game-round.dart';

class Game {
  int _id = 1;
  String _name = '';
  DateTime date = DateTime.now();
  List<Player> _players = [];
  List<GameRound> _rounds = [];

  Game({required name}) : _name = name;

  @override
  String toString() {
    return '{id: $_id, name: $_name, playersCount: ${_players.length}}';
  }

  List<Player> get players => _players;
  int get id => _id;
  String get name => _name;

  set name(String name) => _name = name;

  void addPlayer(Player player) {
    _players.add(player);
  }

  void removePlayer(Player player) {
    _players.remove(player);
  }
}
