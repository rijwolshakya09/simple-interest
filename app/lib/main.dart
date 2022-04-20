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
        '/output': (context) => const Output()
      },
    ),
  );
}
