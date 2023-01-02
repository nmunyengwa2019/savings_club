import 'package:flutter/material.dart';

TextButton txtButton(String lable, Function onpressed) {
  return TextButton(
    onPressed: () => onpressed(),
    style: ButtonStyle(
        backgroundColor:
            MaterialStateColor.resolveWith((states) => Colors.blue),
        padding: MaterialStateProperty.resolveWith(
            (states) => const EdgeInsets.symmetric(vertical: 8))),
    child: Text(lable),
  );
}
