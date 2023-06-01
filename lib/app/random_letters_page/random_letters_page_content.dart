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
    );
  }
}
