import 'player.dart';
import 'game-round.dart';

class Game {
  int id = 0;
  String name = '';
  DateTime date = DateTime.now();
  List<Player> players = [];
  List<GameRound> rounds = [];
}
