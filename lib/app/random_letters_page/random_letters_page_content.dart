import 'dart:math';

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
  final List<String> letters = [
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'R',
    'S',
    'T',
    'U',
    'W',
    'X',
    'Y',
    'Z',
  ];
  String letter = 'X';
  Random draw = Random();
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
        actions: [
          Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.info,
                      size: 30,
                    ),
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text('Letters you can draw'),
                            content: const Text(
                                'A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,R,S,T,U,W,X,Y,Z'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                style: TextButton.styleFrom(
                                  primary: Colors.white,
                                  elevation: 5,
                                  backgroundColor:
                                      const Color.fromARGB(255, 33, 99, 35),
                                  shape: const BeveledRectangleBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                ),
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
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 60),
            Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromARGB(255, 33, 99, 35),
              ),
              child: Center(
                child: Text(
                  letter,
                  style: const TextStyle(
                    fontSize: 200,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton.icon(
              icon: const Icon(
                Icons.sync,
                size: 24.0,
              ),
              style: ElevatedButton.styleFrom(
                  primary: const Color.fromARGB(255, 33, 99, 35),
                  fixedSize: const Size(180, 80),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50))),
              label: const Text(
                'DRAW LETTER',
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                setState(() {
                  letter = letters[draw.nextInt(letters.length)];
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
