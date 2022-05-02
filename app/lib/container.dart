import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: SafeArea(
        child: Center(
          child: Container(
            width: 200,
            height: 200,
            alignment: Alignment.center,
            child: const Text("This is a Container"),
            decoration: BoxDecoration(
                color: Colors.amberAccent,
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 2)),
          ),
        ),
      ),
    );
  }
}
