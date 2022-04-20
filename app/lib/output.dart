import 'package:flutter/material.dart';

class Output extends StatefulWidget {
  const Output({Key? key}) : super(key: key);
  @override
  State<Output> createState() => _OutputState();
}

class _OutputState extends State<Output> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic Output'),
      ),
      body: const Text("Result"),
    );
  }
}
