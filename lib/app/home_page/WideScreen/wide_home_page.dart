import 'package:flutter/material.dart';
import 'package:instruments_for_various_games/app/dice_page/dice_page_content.dart';
import 'package:instruments_for_various_games/app/random_letters_page/random_letters_page_content.dart';

class WideHomePage extends StatelessWidget {
  const WideHomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(105, 33, 76, 30),
      appBar: AppBar(
        title: const Text(
          'What you need ?',
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
              IconButton(
                icon: const Icon(
                  Icons.info,
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Information'),
                        content: const Text(
                            'A simple application that you can use for games where you use a dice or need a random letter. Such as monopoly,countries,cities game. APPLICATION CREATED TO GAIN PRACTICE'),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.white,
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const DicePageContent(),
                        ),
                      );
                    },
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
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              const RandomLettersPageContent(),
                        ),
                      );
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset('images/AtoZ.jpg',
                          width: 120.0, height: 120.0),
                    ),
                  ),
                  const SizedBox(height: 14),
                  const Text(
                    'Random letters',
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
