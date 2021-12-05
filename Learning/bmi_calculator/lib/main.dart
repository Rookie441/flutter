import 'package:flutter/material.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        //Refer to https://api.flutter.dev/flutter/material/ThemeData-class.html
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: MaterialColor(
            0xFF0A0E21,
            const <int, Color>{
              50: const Color(0xffce5641), //10%
              100: const Color(0xffb74c3a), //20%
              200: const Color(0xffa04332), //30%
              300: const Color(0xff89392b), //40%
              400: const Color(0xff733024), //50%
              500: const Color(0xff5c261d), //60%
              600: const Color(0xff451c16), //70%
              700: const Color(0xff2e130e), //80%
              800: const Color(0xff170907), //90%
              900: const Color(0xff000000), //100%
            },
          ),
          accentColor: Colors.purple,
        ),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        // textTheme: const TextTheme(
        //   bodyText2: TextStyle(color: Colors.white),
        // ),
      ),
      debugShowCheckedModeBanner: false,
      home: InputPage(),
    );
  }
}
