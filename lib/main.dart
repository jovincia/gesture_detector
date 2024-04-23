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
        canvasColor: MainColors.brown,
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
  List<Widget> textWidgets = [];
  final Random random = Random();
  //int counter = 0;
  //int currentFontIndex = 0;

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
          child: Text(
            style: GoogleFonts.calligraffitti(
              fontSize: 25,
            ),
            widget.title,
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
