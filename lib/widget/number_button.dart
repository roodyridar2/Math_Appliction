import 'package:flutter/material.dart';
import 'package:flutter_color/flutter_color.dart';
import 'package:matrix/constants.dart';
import 'package:matrix/diverge_converge.dart';

class numButton extends StatelessWidget {
  const numButton(this.numberName, this.onpress, this.color, {super.key});
  final String numberName;
  final Function onpress;
  final Color color;

  @override
  Widget build(BuildContext context) {
    if (getRich) {
      result = "";
      label = "";
      getRich = false;
    }

    return GestureDetector(
        onTap: () => onpress(),
        child: Container(
          width: 100,
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: color,
          ),
          child: Center(
            child: Text(
              numberName,
              style: TextStyle(color: Colors.white, fontSize: 35),
            ),
          ),
        ));
  }
}
