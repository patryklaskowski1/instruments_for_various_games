import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instruments for various games',
      home: Scaffold(
        backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: const Text(
            'What instrumets you need ?',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          backgroundColor: Colors.green,
          centerTitle: true,
          toolbarHeight: 250,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(35),
                bottomLeft: Radius.circular(35)),
          ),
          actions: [
            Column(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.info,
                  ),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
