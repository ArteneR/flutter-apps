import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rummy_score/data.dart';
import 'package:rummy_score/services/utils.dart';
import 'package:rummy_score/routes.dart';
import 'package:rummy_score/widgets/content-box.dart';

class ViewGameScreen extends StatelessWidget {
  const ViewGameScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      appBar: AppBar(
        title: const Text('Game #1'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          const SizedBox(
            height: 30.0,
          ),
          Expanded(
            child: ContentBox(
              child: Column(
                children: <Widget>[
                  const Text('View Game Screen'),
                  Text('TEST data: ' +
                      Provider.of<Data>(context).data['test'].toString()),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              child: const Text('Submit Score'),
              onPressed: () {
                Utils.goToScreen(context, Routes.submitScoreScreen);
              },
            ),
          ),
        ],
      ),
    );
  }
}
