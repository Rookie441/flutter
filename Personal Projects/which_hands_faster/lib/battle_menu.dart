import 'package:flutter/material.dart';
import 'music_lane.dart';

class BattleMenu extends StatefulWidget {
  @override
  _BattleMenuState createState() => _BattleMenuState();
}

class _BattleMenuState extends State<BattleMenu> {
  int counter1 = 0;
  int counter2 = 0;
  int counter3 = 0;
  int counter4 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Battle Menu'),
      ),
      body: Row(
        children: <Widget>[
          MusicLane(
            laneColor: Colors.red,
            onPress: () {
              setState(() {
                counter1++;
                print('first lane pressed');
              });
            },
            counter: counter1,
          ),
          MusicLane(
            laneColor: Colors.green,
            onPress: () {
              setState(() {
                counter2++;
                print('second lane pressed');
              });
            },
            counter: counter2,
          ),
          MusicLane(
            laneColor: Colors.yellow,
            onPress: () {
              setState(() {
                counter3++;
                print('third lane pressed');
              });
            },
            counter: counter3,
          ),
          MusicLane(
            laneColor: Colors.purple,
            onPress: () {
              setState(() {
                counter4++;
                print('fourth lane pressed');
              });
            },
            counter: counter4,
          ),
        ],
      ),
    );
  }
}
