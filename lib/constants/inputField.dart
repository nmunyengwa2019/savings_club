import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextFormField inputField(TextEditingController contr, TextInputType inputType,
    String labelName, bool isPass) {
  return TextFormField(
    controller: contr,
    keyboardType: inputType,
    obscureText: isPass,
    decoration: InputDecoration(
        focusColor: Colors.red,
        labelText: labelName,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.green, width: 1)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(color: Colors.green, width: 1))),
  );
}
