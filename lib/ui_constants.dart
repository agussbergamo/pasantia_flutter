import 'package:flutter/material.dart';

abstract class UIConstants {
  static const backgroundColor = Colors.black12;
  static const title = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.bold,
    fontFamily: 'Roboto',
    color: Colors.white,
  );
  static const subtitle = TextStyle(
    fontSize: 16,
    fontFamily: 'Roboto',
    color: Colors.white70,
    fontWeight: FontWeight.bold,
  );
  static const text = TextStyle(
    fontSize: 15,
    fontFamily: 'Roboto',
    color: Colors.white70,
  );
  static const lineSpace = SizedBox(
    height: 10,
  );
  static const sectionSpace = SizedBox(
    height: 30,
  );
  static const listIconSpace = SizedBox(
    width: 10,
  );
  static const paddingPlayButton = EdgeInsets.fromLTRB(
    50,
    5,
    50,
    5,
  );
}
