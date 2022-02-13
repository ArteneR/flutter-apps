import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rummy_score/data/games-data.dart';
import 'package:rummy_score/screens/submit-score-screen/widgets/scores-list-empty.dart';
import 'package:rummy_score/screens/submit-score-screen/widgets/scores-list.dart';
import 'package:rummy_score/widgets/button-primary-default.dart';
import 'package:rummy_score/widgets/content-box.dart';

class SubmitScoreScreen extends StatefulWidget {
  const SubmitScoreScreen({Key? key}) : super(key: key);

  @override
  State<SubmitScoreScreen> createState() => _SubmitScoreScreenState();
}

class _SubmitScoreScreenState extends State<SubmitScoreScreen> {
  late TextEditingController _score;
  late GamesData gamesData;

  @override
  void initState() {
    gamesData = Provider.of<GamesData>(context, listen: false);
    super.initState();
    _score = TextEditingController(text: gamesData.currentGame!.name);
  }

  @override
  void dispose() {
    _score.dispose();
    super.dispose();
  }

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
            child: Consumer<GamesData>(builder: (context, gamesData, child) {
              return Column(
                children: [
                  Visibility(
                    visible: gamesData.currentGame!.players.isNotEmpty,
                    child: const ScoresList(),
                  ),
                  Visibility(
                    visible: gamesData.currentGame!.players.isEmpty,
                    child: const ScoresListEmpty(),
                  ),
                ],
              );
            }),
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
