import 'package:flutter/material.dart';

TextButton txtButton(String lable, Function onpressedFunction) {
  return TextButton(
    onPressed: () => onpressedFunction(),
    style: ButtonStyle(
        backgroundColor:
            MaterialStateColor.resolveWith((states) => Colors.blue),
        padding: MaterialStateProperty.resolveWith(
            (states) => const EdgeInsets.symmetric(vertical: 8))),
    child: Text(
      lable,
      style: const TextStyle(color: Colors.white),
    ),
  );
}
