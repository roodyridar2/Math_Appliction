import 'package:flutter/material.dart';
import 'package:matrix/constants.dart';
import '../page_matrixA.dart';
import '../page_matrix_b.dart';

class Substraction extends StatefulWidget {
  const Substraction({super.key});

  @override
  State<Substraction> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Substraction> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: kbackgroundColor,
          appBar: AppBar(
            title: Text(
              "MATRIX",
              style: TextStyle(color: ktextColor),
            ),
            // elevation: 0,
            backgroundColor: knavbarColor,
            bottom: TabBar(
              indicatorColor: ktextColor,
              tabs: const [
                Tab(
                  text: "Matrix A",
                ),
                Tab(
                  text: "Matrix B",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              const MatrixA(),
              MatrixB("Substraction", ksubstraction),
            ],
          ),
        ),
      ),
    );
  }
}
