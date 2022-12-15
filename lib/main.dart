import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Home.dart';
import 'Login.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

MaterialColor darkGreen = Color(0xff075E54) as MaterialColor;

void main() {
  runApp(
    MaterialApp(
      home: Login(),
      debugShowCheckedModeBanner: false,
    ),
  );
}
