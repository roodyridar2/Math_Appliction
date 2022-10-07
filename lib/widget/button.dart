import 'package:flutter/material.dart';
import 'package:flutter_color/flutter_color.dart';
import 'package:matrix/constants.dart';

class RoundButton extends StatelessWidget {
  const RoundButton(this.icon, this.onpress, {super.key});
  final IconData icon;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: () => onpress(),
      constraints: const BoxConstraints.tightFor(width: 56, height: 56),
      shape: const CircleBorder(),
      fillColor: knavbarColor,
      child: Icon(
        icon,
        color: HexColor("EEEEEE"),
        size: 25,
      ),
    );
  }
}
