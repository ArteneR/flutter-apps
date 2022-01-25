import 'package:flutter/material.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'services/db.dart';
import 'theme.dart';
import 'screens/home-screen.dart';
import 'player.dart';

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
      home: const HomeScreen(),
    );
  }
}
