import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_club/constants/bottomNav.dart';
import 'package:savings_club/constants/constants.dart';

class Ecocash extends StatefulWidget {
  const Ecocash({Key? key}) : super(key: key);

  @override
  State<Ecocash> createState() => _EcocashState();
}

class _EcocashState extends State<Ecocash> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          bottomNavigationBar: BottomNav(Icons.home, Icons.groups_rounded,
              Icons.person_pin, "Home", "Members", "My Profile"),
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: bgAppbar,
            title: Text(
              "Ecocash",
              style:
                  GoogleFonts.acme(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          )),
    );
  }
}
