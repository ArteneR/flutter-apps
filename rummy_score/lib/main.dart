import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import './screens/home-screen.dart';
import './screens/game-setup-screen.dart';
import './screens/games-history-screen.dart';
import './screens/view-game-screen.dart';
import './screens/submit-score-screen.dart';
import './services/db.dart';
import './theme.dart';
import './player.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();

  // DB db = await DB.instance;

  // var testPlayer = Player(2, 'Mihai3');

  // await db.insertPlayer(testPlayer);

  // print(await db.getPlayers());

  runApp(const RummyScoreApp());
}

class RummyScoreApp extends StatelessWidget {
  const RummyScoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rummy Score',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().theme,
      initialRoute: '/home-screen',
      routes: <String, WidgetBuilder>{
        '/home-screen': (context) => HomeScreen(),
        '/game-setup-screen': (context) => GameSetupScreen(),
        '/games-history-screen': (context) => GamesHistoryScreen(),
        '/view-game-screen': (context) => ViewGameScreen(),
        '/submit-score-screen': (context) => SubmitScoreScreen(),
      },
    );
  }
}
