import 'package:flutter/material.dart';
import 'package:matrix/constants.dart';
import 'button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonCard extends StatefulWidget {
  const ButtonCard(this.name, this.num, this.addNum, this.minNum, {super.key});

  final String name;
  final int num;
  final Function addNum;
  final Function minNum;

  @override
  State<ButtonCard> createState() => _ButtonCardState();
}

class _ButtonCardState extends State<ButtonCard> {
  @override
  void initState() {
    super.initState();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          widget.name,
          style: TextStyle(color: ktextColor, fontSize: 20),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            RoundButton(FontAwesomeIcons.plus, widget.addNum),
            const SizedBox(width: 20),
            Text(
              widget.num.toString(),
              style: TextStyle(fontSize: 20, color: ktextColor),
            ),
            const SizedBox(width: 20),
            RoundButton(
              FontAwesomeIcons.minus,
              widget.minNum,
            ),
          ],
        ),
      ],
    );
  }
}
