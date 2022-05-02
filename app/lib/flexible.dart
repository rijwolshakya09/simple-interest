import 'package:flutter/material.dart';

class FlexibleScreen extends StatelessWidget {
  const FlexibleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded'),
      ),
      body: Column(
        children: [
          //This works same as Flexible, FlexFit.loose
          Expanded(
            child: Container(
              height: 500,
              width: double.infinity,
              color: Colors.amber,
              child: const Text('1'),
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            // fit: FlexFit.loose,   this leaves the empty screen
            child: Container(
              height: 150,
              width: double.infinity,
              color: Colors.blue,
              child: const Text('2'),
            ),
          )
        ],
      ),
    );
  }
}
