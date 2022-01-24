import 'package:flutter/material.dart';
import 'theme.dart';
import 'input-page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().theme,
      home: InputPage(),
    );
  }
}
