import 'package:flutter/material.dart';
import 'theme.dart';
import 'screens/home-screen.dart';

void main() {
  runApp(RummyScoreApp());
}

class RummyScoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rummy Score',
      debugShowCheckedModeBanner: false,
      theme: AppTheme().theme,
      home: HomeScreen(),
    );
  }
}
