import 'dart:math';

import 'package:matrix/diverge_converge.dart';

class FactData {
  List<String> listOf_FAct = [
    'Zero ( 0 ) is the only number which can not be represented by Roman numerals',
    'Plus (+) and Minus (-) sign symbols were used as early as 1489 A.D',
    'Among all shapes with the same perimeter a circle has the largest area',
    'Among all shapes with the same area circle has the shortest perimet',
    'From 0 to 1,000, the letter "A" only appears in 1,000 ("one thousand")',
    'Have you ever noticed that the opposite sides a die always add up to seven (7)',
    '-40 °C is equal to -40 °F',
    'Did you Know, Trigonometry goes back to the Greek period',
    'Rulers are believed to have been used by the Indus Valley Civilization before 1500 BCE',
    'The ancient Greeks developed a numeral system c.450 BCE',
    'first actual written zero appeared \nin India in 876 AD',
    'Linear equations were invented in 1843 by Irish mathematician Sir William Rowan Hamilton',
    'British mathematician John Venn (1834-1923) introduced Venn diagrams into set theory',
    '2600 BC the Mesopotamians \nhad developed the first forms of multiplication tables',
    'Euclid is best known \n“The Father of Geometry”',
    'The common symbol ${String.fromCharCode(0x221E)} was invented\nby the English mathematician John Wallis in 1655',
  ];
  String data() {
    Random random = Random();
    return listOf_FAct[random.nextInt(listOf_FAct.length)];
  }
}
