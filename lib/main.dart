import 'package:flutter/material.dart';
import 'package:gesture_detector/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

import 'package:marquee/marquee.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(
        title: 'Ikiiiii ♥♥♥♥♥♥♥',
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> textWidgets = [];
  final Random random = Random();
  int counter = 0;


  final List<TextStyle> fontsApply = [
    GoogleFonts.calligraffitti(
        textStyle: TextStyle(fontSize: 50, color: MainColors.brown1)),
    GoogleFonts.dancingScript(
        textStyle: TextStyle(fontSize: 45, color: MainColors.brown)),
    GoogleFonts.pacifico(
        textStyle: TextStyle(fontSize: 35, color: MainColors.brownCoffeeMilk)),
    GoogleFonts.caveat(
        textStyle: TextStyle(fontSize: 45, color: MainColors.brown1)),
    GoogleFonts.shadowsIntoLight(
        textStyle: TextStyle(fontSize: 30, color: MainColors.brownCoffeeMilk)),
    GoogleFonts.badScript(
        textStyle: TextStyle(fontSize: 30, color: MainColors.brownNude)),
    GoogleFonts.nothingYouCouldDo(
        textStyle: TextStyle(fontSize: 40, color: MainColors.brownCoffeeMilk)),
    GoogleFonts.farsan(
        textStyle: TextStyle(fontSize: 50, color: MainColors.brown1)),
  ];

  void _incrementCounter() {
    setState(() {
      double top =
          random.nextDouble() * (MediaQuery.of(context).size.height - 50);
      double left =
          random.nextDouble() * (MediaQuery.of(context).size.width - 50);

      textWidgets.add(
        Positioned(
          top: top,
          left: left,
          child: Text(
            'Iki',
            style: fontsApply[Random().nextInt(fontsApply.length)],
          ),
        ),
      );

      /*  textWidgets.add(
        Text('Iki', style: fontsApply[Random().nextInt(fontsApply.length)]),
      ); */
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MainColors.brownNude,
        title: Center(
          child: Marquee(
            text: "Ikiiiii ♥♥♥♥♥♥♥",
            style: GoogleFonts.calligraffitti(fontSize: 25),
            scrollAxis: Axis.horizontal,
            //crossAxisAlignment: CrossAxisAlignment.center,
            blankSpace: 3.0,
            velocity: 10.0,
            pauseAfterRound: const Duration(seconds: 1),
            startPadding: 10.0,
            accelerationDuration: const Duration(seconds: 1),
            accelerationCurve: Curves.linear,
            decelerationDuration: const Duration(milliseconds: 500),
            decelerationCurve: Curves.easeOut,
          ),
        ),
      ),
      body: Stack(
        children: textWidgets,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: MainColors.brownCoffeeMilk,
        onPressed: _incrementCounter,
        tooltip: 'Add new font',
        child: const Icon(Icons.text_increase, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
