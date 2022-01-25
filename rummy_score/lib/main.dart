import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import './routes.dart';
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
      theme: AppTheme().theme,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.homeScreen,
      routes: <String, WidgetBuilder>{
        Routes.homeScreen: (context) => HomeScreen(),
        Routes.gameSetupScreen: (context) => GameSetupScreen(),
        Routes.gamesHistoryScreen: (context) => GamesHistoryScreen(),
        Routes.viewGameScreen: (context) => ViewGameScreen(),
        Routes.submitScoreScreen: (context) => SubmitScoreScreen(),
      },
    );
  }
}
