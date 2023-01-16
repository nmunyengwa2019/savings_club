// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_club/constants/constants.dart';

submitButton(String lableText, double buttonWidth) {
  return Container(
    decoration: BoxDecoration(
        border:
            Border.all(width: 2, color: const Color.fromARGB(255, 5, 92, 174)),
        borderRadius: const BorderRadius.all(Radius.circular(25))),

    height: 60,
    width: buttonWidth,
    // color: bgColor,
    child: Center(
        child: Text(
      lableText,
      style: GoogleFonts.acme(fontSize: 30, color: submitColor),
    )),
  );
}
