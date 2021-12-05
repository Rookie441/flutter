import 'package:flutter/material.dart';
import '../constants.dart';

const iconSize = 80.0;
const gap = 15.0;

class IconContent extends StatelessWidget {
  IconContent({@required this.text, @required this.icon});
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        SizedBox(
          height: gap,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
