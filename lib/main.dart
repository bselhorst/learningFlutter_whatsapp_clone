import 'package:flutter/material.dart';
import 'Home.dart';
import 'Login.dart';

MaterialColor darkGreen = Color(0xff075E54) as MaterialColor;

void main() {
  runApp(
    MaterialApp(
      home: Login(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
