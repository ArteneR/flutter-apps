import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rummy_score/data.dart';
import 'package:rummy_score/widgets/button-primary-default.dart';
import 'package:rummy_score/widgets/content-box.dart';

class SubmitScoreScreen extends StatelessWidget {
  const SubmitScoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      appBar: AppBar(
        title: const Text('Round #1 score'),
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
                  const Text('Submit Score Screen'),
                  ButtonPrimaryDefault(
                    text: 'Update test data',
                    onPressed: () {
                      Provider.of<Data>(context, listen: false)
                          .updateData('AAA');
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
        ],
      ),
    );
  }
}
