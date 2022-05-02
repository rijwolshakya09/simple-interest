import 'package:flutter/material.dart';

class GridViewScreen extends StatefulWidget {
  const GridViewScreen({Key? key}) : super(key: key);

  @override
  State<GridViewScreen> createState() => _GridViewScreenState();
}

class _GridViewScreenState extends State<GridViewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Grid View Example'),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: [
          Container(
            color: Colors.amber,
            alignment: Alignment.center,
            child: const Text(
              '1',
              style: TextStyle(fontSize: 40),
            ),
            // decoration: BoxDecoration(),
          ),
          Container(
            color: Colors.green,
            alignment: Alignment.center,
            child: const Text(
              '2',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Container(
            color: Colors.red,
            alignment: Alignment.center,
            child: const Text(
              '3',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Container(
            color: Colors.blue,
            alignment: Alignment.center,
            child: const Text(
              '4',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Container(
            color: Colors.lightBlue,
            alignment: Alignment.center,
            child: const Text(
              '5',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Container(
            color: Colors.purple,
            alignment: Alignment.center,
            child: const Text(
              '6',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Container(
            color: Colors.pink,
            alignment: Alignment.center,
            child: const Text(
              '7',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Container(
            color: Colors.amber,
            alignment: Alignment.center,
            child: const Text(
              '8',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Container(
            color: Colors.amberAccent,
            alignment: Alignment.center,
            child: const Text(
              '9',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Container(
            color: Colors.redAccent,
            alignment: Alignment.center,
            child: const Text(
              '10',
              style: TextStyle(fontSize: 40),
            ),
          )
        ],
      ),
    );
  }
}
