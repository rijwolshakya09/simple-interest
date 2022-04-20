import 'package:flutter/material.dart';

import 'dashboard.dart';
import 'add_number.dart';
import 'simple_interest.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Dashboard(),
        '/simple_interest': (context) => const SimpleInterest(),
        '/add_number': (context) => const MyScreen(),
      },
    ),
  );
}
