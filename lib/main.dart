import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        appBar: AppBar(
          title: Text(
            'What instrumets you need?',
            style: GoogleFonts.rubikPuddles(
              textStyle: const TextStyle(
                color: Colors.pink,
              ),
            ),
          ),
          centerTitle: true,
          toolbarHeight: 250,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(35),
                bottomLeft: Radius.circular(35)),
          ),
        ),
        backgroundColor: Colors.greenAccent,
      ),
    );
  }
}
