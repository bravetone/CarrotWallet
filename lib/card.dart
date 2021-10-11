import 'package:flutter/material.dart';

Widget card(
    {double width = double.infinity,
    double padding = 20,
    required Widget child}) {
  return Container(
    width: width,
    decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12))),
    padding: EdgeInsets.all(padding),
    child: child,
  );
}