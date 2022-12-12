import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      required this.borderColor,
      required this.autoFocus});

  final String hintText;
  final Color borderColor;
  final bool autoFocus;

  @override
  Widget build(BuildContext context) {
    return TextField(
      autofocus: autoFocus,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        fontSize: 20,
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
        hintText: hintText,
        filled: true,
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(
            color: borderColor,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32),
          borderSide: BorderSide(
            color: borderColor,
          ),
        ),
      ),
    );
  }
}
