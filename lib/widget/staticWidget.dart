import 'package:flutter/material.dart';
import '../constants.dart';

class ResultStatic extends StatelessWidget {
  const ResultStatic(
    this.name,
    this.number, {
    Key? key,
  }) : super(key: key);

  final String name;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 80,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: knavbarColor,
          ),
          child: Center(
            child: Text(
              "$name:",
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
        const SizedBox(width: 5),
        SizedBox(
          width: 50,
          height: 40,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              number,
              style: const TextStyle(fontSize: 25, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
