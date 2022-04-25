import 'dart:math';

import 'package:flutter/material.dart';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  Random random = Random();
  int? first, second;
  int man = 0;
  int system = 0;
  int i = 0;
  bool enableButton = true;

  int _generateRandom() {
    return random.nextInt(100);
  }

  @override
  Widget build(BuildContext context) {
    first = _generateRandom();
    second = _generateRandom();
    if (first == second) {
      first = _generateRandom();
      second = _generateRandom();
    }
    if (i >= 10) {
      enableButton = false;
    }
    return Scaffold(
      appBar: AppBar(title: const Text("Game Guess")),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                  onPressed: enableButton
                      ? () {
                          if (first! < second!) {
                            setState(() {
                              system++;
                              i++;
                            });
                          } else {
                            setState(() {
                              man++;
                              i++;
                            });
                          }
                        }
                      : null,
                  child: Text("$first")),
            ),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                  onPressed: enableButton
                      ? () {
                          if (second! < first!) {
                            setState(() {
                              system++;
                              i++;
                            });
                          } else {
                            setState(() {
                              man++;
                              i++;
                            });
                          }
                        }
                      : null,
                  child: Text("$second")),
            ),
            if (i >= 10) Text("You: $man and System: $system"),
            if (i >= 10 && system > man) const Text("yOU LOSE"),
            if (i >= 10 && system < man) const Text("You Won")
          ],
        ),
      ),
    );
  }
}
