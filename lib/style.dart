import 'package:flutter/material.dart';

InputDecoration fieldStyle(labelText){
  return InputDecoration(
    labelText: 'Enter Num 1',
    enabledBorder: OutlineInputBorder(

    ),
    focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
            color: Colors.blue
        )
    ),
  );
}


ButtonStyle buttonStyle(bgColor){
  return ElevatedButton.styleFrom(
    backgroundColor: bgColor,
  );
}

TextStyle resultStyle(color){
  return TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: color,
  );
}