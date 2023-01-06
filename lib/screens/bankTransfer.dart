import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_club/constants/bottomNav.dart';
import 'package:savings_club/constants/constants.dart';

class BankTransfer extends StatefulWidget {
  const BankTransfer({Key? key}) : super(key: key);

  @override
  State<BankTransfer> createState() => _BankTransferState();
}

class _BankTransferState extends State<BankTransfer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          bottomNavigationBar: BottomNav(Icons.home, Icons.groups_rounded,
              Icons.person_pin, "Home", "Members", "My Profile"),
          appBar: AppBar(
            backgroundColor: bgAppbar,
            centerTitle: true,
            title: Text(
              "Bank Transfer",
              style:
                  GoogleFonts.acme(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          )),
    );
  }
}
