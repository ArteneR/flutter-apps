import 'package:flutter/material.dart';

class ScoreInput extends StatelessWidget {
  final String playerName;
  final void Function() selectCallback;

  const ScoreInput({
    Key? key,
    required this.playerName,
    required this.selectCallback,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: selectCallback,
      title: Text(
        playerName,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
      ),
    );
  }
}


// child: Column(
//   children: <Widget>[
//     Text('Submit Score Screen'),
//     Row(
//       children: [
//         Text('Mihai'),
//         Container(
//           width: 300.0,
//           child: Row(
//             children: [
//               FloatingActionButton(
//                 child: const Icon(Icons.add),
//                 onPressed: () {},
//               ),
//               TextField(
//                 controller: _score,
//                 decoration: const InputDecoration(
//                   filled: true,
//                   fillColor: Color(0xFFF7F7F7),
//                   hintText: "Enter game name",
//                 ),
//               ),
//               FloatingActionButton(
//                 backgroundColor: Colors.lightBlueAccent,
//                 child: const Icon(Icons.add),
//                 onPressed: () {},
//               ),
//             ],
//           ),
//         )
//       ],
//     ),
//   ],
// ),
