import 'package:flutter/material.dart';

Widget loginItem(String placeholder) {
  return TextField(
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      filled: true,
      fillColor: Colors.white,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      labelText: placeholder,
      prefixIcon: Icon(placeholder == 'Username' ? Icons.account_circle_sharp : Icons.key_sharp),
    ),
    obscureText: placeholder == "Password",
  );
}