import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:matrix/constants.dart';

// ignore: must_be_immutable

// ignore: must_be_immutable
class TextFieldWidget extends StatelessWidget {
  var controller = TextEditingController();

  TextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 100,
          child: TextField(
            controller: controller,
            keyboardType: const TextInputType.numberWithOptions(decimal: true),
            inputFormatters: [
              FilteringTextInputFormatter.allow(
                  RegExp(r'[0-9]+[,.]{0,1}[0-9]*')),
            ],
            style: TextStyle(color: ktextColor),
            decoration: InputDecoration(
              filled: true,
              fillColor: kbackgroundColor,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: ktextColor, width: 3),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: ktextColor, width: 4),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
