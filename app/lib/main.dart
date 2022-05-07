import 'package:app/container.dart';
import 'package:app/flexible.dart';
import 'package:app/gridview.dart';
import 'package:app/loadimage.dart';
import 'package:app/numbergenerator.dart';
import 'package:app/numbersgame.dart';
import 'package:app/toast.dart';
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
        '/container': (context) => const ContainerScreen(),
        '/flexible': (context) => const FlexibleScreen(),
        '/gridview': (context) => const GridViewScreen(),
        '/loadimage': (context) => const LoadImageScreen(),
        '/toast': (context) => const ToastScreen(),
      },
    ),
  );
}
