import 'package:flutter/material.dart';
import 'main_menu.dart';
import 'battle_menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => MainMenu(),
        '/first': (context) => BattleMenu(),
        //'/second': (context) => Screen2(),
      },
    );
  }
}
