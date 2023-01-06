import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

BottomNavigationBar BottomNav(IconData icon1, IconData icon2, IconData icon3,
    String icon1Label, String icon2Label, String icon3Label) {
  return BottomNavigationBar(
      backgroundColor: bgAppbar,
      elevation: 4,
      unselectedItemColor: Color.fromARGB(255, 200, 200, 200),
      selectedItemColor: Color.fromARGB(255, 247, 246, 248),
      selectedLabelStyle: GoogleFonts.acme(
        fontSize: 16,
      ),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(icon1), label: icon1Label),
        BottomNavigationBarItem(icon: Icon(icon2), label: icon2Label),
        BottomNavigationBarItem(icon: Icon(icon3), label: icon3Label),
      ]);
}
