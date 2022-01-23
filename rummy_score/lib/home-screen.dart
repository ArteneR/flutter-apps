import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              width: double.infinity,
              color: Colors.red.shade900,
              child: const Text('Top'),
            ),
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(20, 40, 20, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      ElevatedButton(
                        child: Container(
                          width: double.infinity,
                          child: const Text(
                            'Start a new game',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        onPressed: () {
                          print('Pressed: Start a new game');
                        },
                      ),
                      // ignore: prefer_const_constructors
                      SizedBox(
                        height: 10.0,
                      ),
                      ElevatedButton(
                        child: Container(
                          width: double.infinity,
                          child: const Text(
                            'View games history',
                            textAlign: TextAlign.center,
                          ),
                        ),
                        onPressed: () {
                          print('Pressed: View games history');
                        },
                      ),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Text('Designed & developed by ArteneR.'),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text('Version: 1.0'),
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
