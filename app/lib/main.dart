import 'package:app/numbergenerator.dart';
import 'package:app/numbersgame.dart';
import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'arithmeticmain.dart';
import 'output.dart';
import 'simple_interest.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Dashboard(),
        '/simple_interest': (context) => const SimpleInterest(),
        '/arithmeticmain': (context) => const MyScreen(),
        '/numbersgame': ((context) => const Game()),
        '/numbergenerator': ((context) => const NumberGenerator()),
        '/output': (context) => const OutputScreen(result: 0),
      },
    ),
  );
}
