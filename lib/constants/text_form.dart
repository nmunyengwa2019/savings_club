import 'package:flutter/material.dart';

TextFormField sampleField(
    TextInputType keyboard, TextEditingController controller, String inputLabel,
    {bool isPass = false}) {
  return TextFormField(
      // key: formKey,
      keyboardType: keyboard,
      obscureText: isPass,
      controller: controller,
      validator: (val) => val!.isEmpty ? 'Field is required' : null,
      decoration: InputDecoration(
        labelText: inputLabel,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(18)),
          borderSide: BorderSide(width: 1, color: Colors.black12),
        ),
      ));
}
