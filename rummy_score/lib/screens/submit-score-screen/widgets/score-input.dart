import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rummy_score/data/games-data.dart';
import 'package:rummy_score/widgets/button-circle-icon-small.dart';

class ScoreInput extends StatefulWidget {
  final String playerName;
  final void Function() onChangeCallback;

  const ScoreInput({
    Key? key,
    required this.playerName,
    required this.onChangeCallback,
  }) : super(key: key);

  @override
  State<ScoreInput> createState() => _ScoreInputState();
}

class _ScoreInputState extends State<ScoreInput> {
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
    return Row(
      children: [
        Text(widget.playerName),
        Container(
          width: 300.0,
          child: Row(
            children: [
              ButtonCircleIconSmall(
                icon: const Icon(Icons.remove),
                onPressed: () {},
              ),
              Expanded(
                child: TextField(
                  controller: _score,
                  decoration: const InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFF7F7F7),
                    hintText: "eg. 105",
                  ),
                ),
              ),
              ButtonCircleIconSmall(
                icon: const Icon(Icons.add),
                onPressed: () {},
              ),
            ],
          ),
        )
      ],
    );
  }
}
