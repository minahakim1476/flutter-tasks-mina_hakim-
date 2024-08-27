import 'package:flutter/material.dart';

Widget myText(String text){
  return Text(
    text,
    textAlign: TextAlign.center,
    style:  const TextStyle(
      color: Color(0xFF808696),
      fontSize: 14,
      letterSpacing: -0.5,
    ),
  );
}
