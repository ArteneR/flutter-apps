import 'package:flutter/material.dart';
import 'home-screen.dart';

void main() {
  runApp(RummyScoreApp());
}

class RummyScoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rummy Score',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeScreen(),
      ),
    );
  }
}
