import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rummy_score/data/games-data.dart';
import 'package:rummy_score/widgets/button-primary-default.dart';
import 'package:rummy_score/widgets/content-box.dart';

class SubmitScoreScreen extends StatefulWidget {
  const SubmitScoreScreen({Key? key}) : super(key: key);

  @override
  State<SubmitScoreScreen> createState() => _SubmitScoreScreenState();
}

class _SubmitScoreScreenState extends State<SubmitScoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      appBar: AppBar(
        title: const Text('Round #1 score'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(
            height: 30.0,
          ),
          const Text('Enter the score for Round #1'),
          ContentBox(
            child: Column(
              children: const <Widget>[
                Text('Submit Score Screen'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            child: ButtonPrimaryDefault(
              text: 'Submit score',
              onPressed: () {
                // Provider.of<Data>(context, listen: false)
                //     .updateData('AAA');
              },
            ),
          ),
        ],
      ),
    );
  }
}
