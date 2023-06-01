import 'package:flutter/material.dart';

class RandomLettersPageContent extends StatefulWidget {
  const RandomLettersPageContent({
    Key? key,
  }) : super(key: key);

  @override
  State<RandomLettersPageContent> createState() =>
      _RandomLettersPageContentState();
}

class _RandomLettersPageContentState extends State<RandomLettersPageContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(105, 33, 76, 30),
      appBar: AppBar(
        title: const Text(
          'Draw your letter',
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
        child: ElevatedButton.icon(
          icon: const Icon(
            Icons.sync,
            size: 24.0,
          ),
          style: ElevatedButton.styleFrom(
              primary: const Color.fromARGB(255, 33, 99, 35),
              fixedSize: const Size(180, 80),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50))),
          label: const Text('DRAW LETTER'),
          onPressed: () {},
        ),
      ),
    );
  }
}
