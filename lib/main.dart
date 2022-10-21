import 'package:flutter/material.dart';
import 'package:matrix/constants.dart';
import 'package:matrix/pages/calculas/bouncingBall.dart';
import 'package:matrix/pages/probabilityAndStatic/ChartPage.dart';
import 'package:matrix/pages/calculas/diverge_converge.dart';
import 'package:matrix/pages/matrixPage/division.dart';
import 'package:matrix/pages/matrixPage/multiply.dart';
import 'package:matrix/pages/probabilityAndStatic/more_static.dart';
import 'package:matrix/pages/probabilityAndStatic/static.dart';
import 'package:matrix/pages/matrixPage/substraction.dart';
import 'package:matrix/pages/calculas/chartbouningball.dart';
import 'pages/matrixPage/addition.dart';
import 'widget/page_widget.dart';
import 'widget/drawer_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // return StaticAndProbability();
    // return ChartPage();
    // return ChartBouncingBall();
    return BouncingBall();

/*
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hi-Max"),
        backgroundColor: knavbarColor,
      ),
      backgroundColor: kbackgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            // SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Adition()),
                );
              },
              child: const PageWidget("Addition"),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Substraction()),
                );
              },
              child: const PageWidget("Substraction"),
            ),
            const SizedBox(height: 16),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Multiply()),
                );
              },
              child: const PageWidget("Multiply"),
            ),
            const SizedBox(height: 16),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Division()),
                );
              },
              child: const PageWidget("Division"),
            ),
            const SizedBox(height: 16),

            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ConvegeAndDiverge()),
                );
              },
              child: const PageWidget("Converge & Diverge "),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const StaticAndProbability()),
                );
              },
              child: const PageWidget("Static "),
            ),
          ],
        ),
      ),
      drawer: const DrawerWidget(),
    ); */
  }
}
