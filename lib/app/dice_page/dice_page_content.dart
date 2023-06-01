import 'package:flutter/material.dart';

class DicePageContent extends StatelessWidget {
  const DicePageContent({
    Key? key,
  }) : super(key: key);

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
            InkWell(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset('images/dice1.png',
                    width: 180.0, height: 180.0),
              ),
            ),
            const SizedBox(height: 70),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'ROLL',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
