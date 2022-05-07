import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastScreen extends StatefulWidget {
  const ToastScreen({Key? key}) : super(key: key);

  @override
  State<ToastScreen> createState() => _ToastScreenState();
}

class _ToastScreenState extends State<ToastScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Toast'),
        centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: const Text("Hi I'm Snackbar Message"),
              duration: const Duration(seconds: 3),
              action: SnackBarAction(
                label: 'OK',
                onPressed: () {
                  ScaffoldMessenger.of(context).hideCurrentSnackBar();
                },
              ),
              backgroundColor: Colors.deepPurple,
            ));

            // Toast
            // Fluttertoast.showToast(
            //   msg: "Hi I'am a toast",
            //   toastLength: Toast.LENGTH_LONG,
            // );
          },
          child: const Text('Show Toast'),
        ),
      ),
    );
  }
}
