import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rummy_score/data/players-data.dart';
import 'package:rummy_score/services/constants.dart';
import 'package:rummy_score/routes/routes.dart';
import 'package:rummy_score/screens/home-screen.dart';
import 'package:rummy_score/screens/game-setup-screen.dart';
import 'package:rummy_score/screens/games-history-screen.dart';
import 'package:rummy_score/screens/view-game-screen.dart';
import 'package:rummy_score/screens/submit-score-screen.dart';
import 'package:rummy_score/screens/add-player-screen.dart';
import 'package:rummy_score/theme/theme.dart';
import 'package:rummy_score/data/games-data.dart';

void main() async {
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
        title: kAppTitle,
        theme: AppTheme().theme,
        debugShowCheckedModeBanner: false,
        initialRoute: Routes.homeScreen,
        routes: <String, WidgetBuilder>{
          Routes.homeScreen: (context) => const HomeScreen(),
          Routes.gameSetupScreen: (context) => GameSetupScreen(),
          Routes.gamesHistoryScreen: (context) => const GamesHistoryScreen(),
          Routes.viewGameScreen: (context) => ViewGameScreen(),
          Routes.submitScoreScreen: (context) => const SubmitScoreScreen(),
          Routes.addPlayerScreen: (context) => AddPlayerScreen(),
        },
      ),
    );
  }
}
