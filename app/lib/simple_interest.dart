import 'package:flutter/material.dart';

class SimpleInterest extends StatefulWidget {
  const SimpleInterest({Key? key}) : super(key: key);

  @override
  State<SimpleInterest> createState() => _MySimpleInterest();
}

class _MySimpleInterest extends State<SimpleInterest> {
  int? principle, rate, time;
  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const SizedBox(height: 10),
            TextFormField(
              onChanged: (value) {
                principle = int.tryParse(value);
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Principal',
                hintText: 'Enter Principal',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              onChanged: (value) {
                rate = int.tryParse(value);
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Rate of Interest',
                hintText: 'Enter Rate of Interest',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              onChanged: (value) {
                time = int.tryParse(value);
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Time',
                hintText: 'Enter Time',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      result = principle! * rate! * time! ~/ 100;
                    });
                  },
                  child: const Text('Calculate')),
            ),
            const SizedBox(height: 8),
            Text('Result: $result'),
          ],
        ),
      ),
    );
  }
}
