// ignore_for_file: prefer_const_constructors, duplicate_ignore, unused_element

import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: 'avenir',
    textTheme: TextTheme(),
  );

  // ignore: dead_code
  TextTheme theme() {
    // ignore: prefer_const_constructors
    return TextTheme(
      // ignore: prefer_const_constructors
      headline1: TextStyle(
          color: Colors.black, fontSize: 2, fontWeight: FontWeight.bold),
      // ignore: prefer_const_constructors
      headline2: TextStyle(
          color: Colors.black, fontSize: 2, fontWeight: FontWeight.bold),
      headline3: TextStyle(
          color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
      headline4: TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      headline5: TextStyle(
          color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
      headline6: TextStyle(
          color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
      bodyText1: TextStyle(
          color: Colors.black, fontSize: 8, fontWeight: FontWeight.normal),
      bodyText2: TextStyle(
          color: Colors.black, fontSize: 5, fontWeight: FontWeight.normal),
    );
  }
}
