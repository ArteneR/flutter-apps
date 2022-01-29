import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:rummy_score/services/utils.dart';
import 'package:rummy_score/routes.dart';
import 'package:rummy_score/constants.dart';
import 'package:rummy_score/widgets/button-primary-default.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              color: kColorPrimary,
              child: const Text(''),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ButtonPrimaryDefault(
                        text: 'Start a new game',
                        onPressed: () {
                          Utils.goToScreen(context, Routes.gameSetupScreen);
                        },
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      ButtonPrimaryDefault(
                        text: 'View games history',
                        onPressed: () {
                          Utils.goToScreen(context, Routes.gamesHistoryScreen);
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      RichText(
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'Designed & developed by ',
                              style: kTextStyleGreyDefaultNormal,
                            ),
                            TextSpan(
                              text: kAppCreatorName,
                              style: kTextStyleGreyDefaultBold,
                              recognizer: TapGestureRecognizer()
                                ..onTap =
                                    () => Utils.openLink(kAppCreatorWebpage),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        'Version: $kAppVersion',
                        style: kTextStyleGreySmallNormal,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
