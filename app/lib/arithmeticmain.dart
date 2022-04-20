import 'package:app/arithmeticfunction.dart';
import 'package:flutter/material.dart';

class MyScreen extends StatefulWidget {
  const MyScreen({Key? key}) : super(key: key);
  @override
  State<MyScreen> createState() => _MyScreenState();
}

class _MyScreenState extends State<MyScreen> {
  // int? first, second;
  final _globalKey = GlobalKey<FormState>();

  final _firstController = TextEditingController();
  final _secondController = TextEditingController();

  String? group = 'myGroup';
  int result = 0;

  _calculate() {
    ArithmeticFunction arithmeticfunction = ArithmeticFunction(
        int.parse(_firstController.text), int.parse(_secondController.text));

    if (group == 'add') {
      setState(() {
        result = arithmeticfunction.add();
      });
    } else if (group == 'subtract') {
      setState(() {
        result = arithmeticfunction.subtract();
      });
    } else if (group == 'multiply') {
      setState(() {
        result = arithmeticfunction.multiply();
      });
    } else if (group == 'divide') {
      setState(() {
        result = arithmeticfunction.divide();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Arithmetic'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: _globalKey,
          child: Column(
            children: [
              const SizedBox(height: 8),
              TextFormField(
                // onChanged: (value) {
                //   first = int.tryParse(value);
                // },
                keyboardType: TextInputType.number,
                controller: _firstController,
                decoration: const InputDecoration(
                  labelText: 'First number',
                  hintText: 'Enter first number',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter first number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 8),
              TextFormField(
                // onChanged: (value) {
                //   second = int.tryParse(value);
                // },
                keyboardType: TextInputType.number,
                controller: _secondController,
                decoration: const InputDecoration(
                  labelText: 'Second number',
                  hintText: 'Enter second number',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter second number';
                  }
                  return null;
                },
              ),
              ListTile(
                title: const Text('Add'),
                leading: Radio(
                  value: 'add',
                  groupValue: group,
                  onChanged: (String? value) {
                    setState(() {
                      group = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Subtract'),
                leading: Radio(
                  value: 'subtract',
                  groupValue: group,
                  onChanged: (String? value) {
                    setState(() {
                      group = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Multiply'),
                leading: Radio(
                  value: 'multiply',
                  groupValue: group,
                  onChanged: (String? value) {
                    setState(() {
                      group = value;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text('Divide'),
                leading: Radio(
                  value: 'divide',
                  groupValue: group,
                  onChanged: (String? value) {
                    setState(() {
                      group = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      if (_globalKey.currentState!.validate()) {
                        // setState(() {
                        //   result = int.parse(_firstController.text) +
                        //       int.parse(_secondController.text);

                        // });
                        _calculate();
                        Navigator.pushNamed(context, '/output');
                      }
                    },
                    child: const Text('Calculate')),
              ),
              const SizedBox(height: 8),
              Text('Result : $result'),
            ],
          ),
        ),
      ),
    );
  }
}
