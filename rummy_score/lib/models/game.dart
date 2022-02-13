import 'player.dart';
import 'game-round.dart';

class Game {
  int id = 1;
  String name;
  DateTime date = DateTime.now();
  List<Player> players;
  List<GameRound> rounds = [];

  Game({required this.name, required this.players});

  @override
  String toString() {
    return '{id: $id, name: $name, playersCount: ${players.length}}';
  }
}
