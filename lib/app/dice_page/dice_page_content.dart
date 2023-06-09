import 'dart:math';
import 'package:flutter/material.dart';

class DicePageContent extends StatefulWidget {
  const DicePageContent({
    Key? key,
  }) : super(key: key);

  @override
  State<DicePageContent> createState() => _DicePageContentState();
}

class _DicePageContentState extends State<DicePageContent> {
  int number = 1;
  Random randomNumber = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(105, 33, 76, 30),
      appBar: AppBar(
        title: const Text(
          'Roll your dice',
          style: TextStyle(
            fontSize: 32,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 33, 99, 35),
        centerTitle: true,
        toolbarHeight: 250,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(35),
              bottomLeft: Radius.circular(35)),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(80.0),
                    child: Image.asset('images/dice$number.png',
                        width: 180.0, height: 180.0),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 70),
            ElevatedButton.icon(
                icon: const Icon(
                  Icons.loop,
                  size: 28.0,
                ),
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(180, 80),
                    backgroundColor: const Color.fromARGB(255, 33, 99, 35),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50))),
                label: const Text(
                  'ROLL',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onPressed: () {
                  setState(() {
                    number = randomNumber.nextInt(6) + 1;
                  });
                }),
          ],
        ),
      ),
    );
  }
}
