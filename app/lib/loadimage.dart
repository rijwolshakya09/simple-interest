import 'package:flutter/material.dart';

class LoadImageScreen extends StatefulWidget {
  const LoadImageScreen({Key? key}) : super(key: key);

  @override
  State<LoadImageScreen> createState() => _LoadImageScreenState();
}

class _LoadImageScreenState extends State<LoadImageScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Colors.amber[50],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: height,
                  width: width,
                  child: Image.asset(
                    'assets/images/naruto.jpg',
                    fit: BoxFit.fitHeight,
                  ),
                ),
                SizedBox(
                  height: height,
                  width: width,
                  child: Image.network(
                    'https://w0.peakpx.com/wallpaper/137/462/HD-wallpaper-naruto-neon-black-simple-anime.jpg',
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
