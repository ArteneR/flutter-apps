import 'player.dart';
import 'game-round.dart';

class Game {
  int id = 1;
  String name;
  DateTime date = DateTime.now();
  List<Player> _players = [];
  List<GameRound> rounds = [];

  Game({required this.name});

  List<Player> get players {
    return _players;
  }

  @override
  String toString() {
    return '{id: $id, name: $name, playersCount: ${players.length}}';
  }

  void addPlayer(Player player) {
    players.add(player);
  }
}
