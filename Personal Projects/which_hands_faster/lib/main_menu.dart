import 'package:flutter/material.dart';
import 'constants.dart';

class MainMenu extends StatelessWidget {
  int memories = 100;
  int highscore = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Main Menu'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Row(
              children: [
                Text(
                  'Memories: $memories',
                  style: kHeadingTextStyle,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  'Highscore: $highscore',
                  style: kHeadingTextStyle,
                ),
              ],
            ),
            SizedBox(
              height: 100.0,
            ),
            CircleAvatar(
              radius: 100.0,
              backgroundImage: AssetImage("images/MusicalHand.jpg"),
            ),
            RaisedButton(
              color: Colors.red,
              child: Column(
                children: [
                  Text('Play'),
                ],
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/first');
              },
            ),
          ],
        ),
      ),
    );
  }
}
