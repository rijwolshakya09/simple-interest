import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/arithmeticmain');
                  },
                  child: const Text('Arithmetic'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/simple_interest');
                  },
                  child: const Text('Simple Interest'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/output');
                  },
                  child: const Text('Output'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/numbersgame');
                  },
                  child: const Text('Numbers Game Old'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/numbergenerator');
                  },
                  child: const Text('Numbers Game New'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
