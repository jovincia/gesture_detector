import 'package:flutter/material.dart';
import 'package:gesture_detector/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: MainColors.brownCoffeeMilk,
      ),
      home: const MyHomePage(title: 'Ikiiiii >>>>>>>>>>>>'),
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
  int counter = 0;
  int currentFontIndex = 0;

  final List<TextStyle> fontsApply = [
    GoogleFonts.calligraffitti(textStyle: const TextStyle(fontSize: 18)),
    GoogleFonts.dancingScript(textStyle: const TextStyle(fontSize: 18)),
    GoogleFonts.pacifico(textStyle: const TextStyle(fontSize: 18)),
    GoogleFonts.caveat(textStyle: const TextStyle(fontSize: 18)),
    GoogleFonts.shadowsIntoLight(textStyle: const TextStyle(fontSize: 18)),
    GoogleFonts.badScript(textStyle: const TextStyle(fontSize: 18)),
    GoogleFonts.nothingYouCouldDo(textStyle: const TextStyle(fontSize: 18)),
    GoogleFonts.farsan(textStyle: const TextStyle(fontSize: 18)),
  ];

  void _incrementCounter() {
    setState(() {
      counter++;
      // changer la police à chaque clic
      //currentFontIndex = (currentFontIndex + 1) % fontsApply.length;
      currentFontIndex = Random().nextInt(fontsApply.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MainColors.brownNude,
        title: Center(
          child: Text(
            style: GoogleFonts.calligraffitti(
              fontSize: 25,
            ),
            widget.title,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Iki', style: fontsApply[currentFontIndex]),
            Text('$counter', style: fontsApply[currentFontIndex]),
          ],
        ),
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
