import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instruments for various games',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(105, 33, 76, 30),
        appBar: AppBar(
          title: const Text(
            'What instrumets you need ?',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 33, 99, 35),
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
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Info'),
                          content: const Text(
                              'Simple app that can be used for various games np. monopoly, game of states, cities or many other'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('Back'),
                            )
                          ],
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset('images/dice.jpg',
                            width: 120.0, height: 120.0),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'Dice',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset('images/AtoZ.jpg',
                            width: 120.0, height: 120.0),
                      ),
                    ),
                    const SizedBox(height: 14),
                    const Text(
                      'Random letter',
                      style: TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
