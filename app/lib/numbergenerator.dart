import 'dart:math';

import 'package:flutter/material.dart';

class NumberGenerator extends StatefulWidget {
  const NumberGenerator({Key? key}) : super(key: key);

  @override
  State<NumberGenerator> createState() => _NumberGeneratorState();
}

class _NumberGeneratorState extends State<NumberGenerator> {
  int? firstNumber, secondNumber;
  bool? submit = true;

  int count = 0;
  int correct = 0;
  int incorrect = 0;

  @override
  void initState() {
    super.initState();
    _generateRandomNumber();
  }

  _generateRandomNumber() {
    setState(() {
      firstNumber = Random().nextInt(100);
      secondNumber = Random().nextInt(100);
      if (firstNumber == secondNumber) {
        _generateRandomNumber();
      }
    });
  }

  _checkFirst() {
    if (count < 10) {
      if (firstNumber! > secondNumber!) {
        setState(() {
          correct++;
          count++;
        });
      } else if (firstNumber! < secondNumber!) {
        setState(() {
          incorrect++;
          count++;
        });
      }
      _generateRandomNumber();
    } else {
      setState(() {
        submit = false;
        return;
      });
    }
  }

  _checkSecond() {
    if (secondNumber! > firstNumber!) {
      setState(() {
        correct++;
      });
    } else {
      setState(() {
        incorrect++;
      });
    }
    if (count > 9) {
      submit = false;
    }
    if (count > 9) {
      submit = false;
    } else {
      _generateRandomNumber();
      count++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            children: [
              const SizedBox(width: double.infinity),
              ElevatedButton(
                  onPressed: submit! ? () => _checkFirst() : null,
                  child: Text(firstNumber.toString())),
              const SizedBox(width: double.infinity),
              ElevatedButton(
                  onPressed: submit! ? () => _checkSecond() : null,
                  child: Text(secondNumber.toString())),
              const Divider(
                thickness: 2,
              ),
              if (count > 9)
                Column(
                  children: [
                    const SizedBox(height: 8),
                    const Text(
                      'Your Result',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Correct: $correct',
                      style: const TextStyle(
                        color: Colors.green,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Incorrect: $incorrect',
                      style: const TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 200,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              count = 0;
                              correct = 0;
                              incorrect = 0;
                              submit = true;
                            });
                          },
                          child: const Text('Restart Game??')),
                    )
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
