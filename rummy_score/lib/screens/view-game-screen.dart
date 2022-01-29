import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rummy_score/routes/route-arguments.dart';
import 'package:rummy_score/services/data.dart';
import 'package:rummy_score/services/utils.dart';
import 'package:rummy_score/routes/routes.dart';
import 'package:rummy_score/widgets/button-primary-default.dart';
import 'package:rummy_score/widgets/content-box.dart';

class ViewGameScreen extends StatefulWidget {
  const ViewGameScreen({Key? key}) : super(key: key);

  @override
  State<ViewGameScreen> createState() => _ViewGameScreenState();
}

class _ViewGameScreenState extends State<ViewGameScreen> {
  late RouteArguments routeArguments;
  late int gameId;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    routeArguments =
        ModalRoute.of(context)!.settings.arguments as RouteArguments;
    gameId = (routeArguments != null ? routeArguments.gameId : 1)!;
  }

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
            child: ButtonPrimaryDefault(
              text: 'Submit Score',
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
