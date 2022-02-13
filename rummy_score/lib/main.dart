import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:path/path.dart';
import 'package:rummy_score/data/players-data.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'package:rummy_score/routes/routes.dart';
import 'package:rummy_score/screens/home-screen.dart';
import 'package:rummy_score/screens/game-setup-screen.dart';
import 'package:rummy_score/screens/games-history-screen.dart';
import 'package:rummy_score/screens/view-game-screen.dart';
import 'package:rummy_score/screens/submit-score-screen.dart';
import 'package:rummy_score/screens/add-player-screen.dart';
import 'package:rummy_score/services/db.dart';
import 'package:rummy_score/theme/theme.dart';
import 'package:rummy_score/models/player.dart';
import 'package:rummy_score/data/games-data.dart';

const appTitle = 'Rummy Score';

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
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<GamesData>(create: (context) => GamesData()),
        ChangeNotifierProvider<PlayersData>(create: (context) => PlayersData()),
      ],
      child: MaterialApp(
        title: appTitle,
        theme: AppTheme().theme,
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.homeScreen,
        routes: <String, WidgetBuilder>{
          Routes.homeScreen: (context) => const HomeScreen(),
          Routes.gameSetupScreen: (context) => GameSetupScreen(),
          Routes.gamesHistoryScreen: (context) => const GamesHistoryScreen(),
          // Routes.viewGameScreen: (context) => const ViewGameScreen(),
          Routes.submitScoreScreen: (context) => const SubmitScoreScreen(),
          Routes.addPlayerScreen: (context) => AddPlayerScreen(),
        },
      ),
    );
  }
}
