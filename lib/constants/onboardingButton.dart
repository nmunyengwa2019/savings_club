// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_fonts/google_fonts.dart';

Container onboardingButton(
    String txt1, String txt2, Future<Navigator> Function() nav) {
  // ignore: avoid_unnecessary_containers
  return Container(
    // color: Colors.blue,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(txt1),
        GestureDetector(
          onTap: () => nav(),
          child: Text(
            txt2,
            style: GoogleFonts.acme(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        )
      ],
    ),
  );
}
