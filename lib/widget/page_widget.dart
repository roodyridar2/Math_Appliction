import 'package:flutter/material.dart';
import 'package:matrix/constants.dart';

class PageWidget extends StatelessWidget {
  const PageWidget(
    this.name, {
    Key? key,
  }) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 75,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: knavbarColor,
          boxShadow: [
            BoxShadow(
              color: knavbarColor,
              spreadRadius: 1,
              blurRadius: 20,
            )
          ]),
      child: Center(
        child: Text(
          name,
          style: TextStyle(
            color: ktextColor,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
