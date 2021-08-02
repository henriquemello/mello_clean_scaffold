import 'package:flutter/material.dart';

class CustomTextTheme extends TextTheme {
  CustomTextTheme({
    required headline1,
    required headline2,
    required headline3,
    required headline4,
    required headline5,
    required headline6,
    required this.headline7,
    required bodyText1,
    required bodyText2,
    required this.bodyText3,
    required this.label1,
    required this.label2,
    required this.label3,
    required this.label4,
    required this.label5,
    required this.label6,
    required this.label7,
    required this.label8,
    required this.label9,
  }) : super(
          headline1: headline1,
          headline2: headline2,
          headline3: headline3,
          headline4: headline4,
          headline5: headline5,
          headline6: headline6,
          bodyText1: bodyText1,
          bodyText2: bodyText2,
        );

  final TextStyle headline7;

  final TextStyle bodyText3;

  final TextStyle label1;
  final TextStyle label2;
  final TextStyle label3;
  final TextStyle label4;
  final TextStyle label5;
  final TextStyle label6;
  final TextStyle label7;
  final TextStyle label8;
  final TextStyle label9;
}
