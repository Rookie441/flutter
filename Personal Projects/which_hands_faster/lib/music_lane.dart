import 'package:flutter/material.dart';
import 'package:which_hands_faster/constants.dart';

class MusicLane extends StatelessWidget {
  MusicLane(
      {required this.laneColor, required this.onPress, required this.counter});
  final Color laneColor;
  final VoidCallback onPress;
  int counter;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              '$counter',
              style: kHeadingTextStyle,
            ),
          ),
          Expanded(
            //flex: 15,
            child: Container(
              color: laneColor,
            ),
          ),
          ElevatedButton(
            child: Icon(
              Icons.fiber_manual_record,
              size: 50.0,
              color: Colors.white38,
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.black54,
            ),
            onPressed: onPress,
          ),
        ],
      ),
    );
  }
}
