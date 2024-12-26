import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ye success ka message ke liye hai
void successMessage(String text) {
  Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Color.fromARGB(10, 0, 255, 0),
      // textColor: Colors.white,
      fontSize: 16.0);
}

// ye error ka message ke liye hai
void errorMessage(String text) {
  Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Color.fromARGB(9, 255, 255, 255),
      // textColor: Colors.white,
      fontSize: 16.0);
}
