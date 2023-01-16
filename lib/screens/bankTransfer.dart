import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_club/constants/backArrow.dart';
import 'package:savings_club/constants/bottomNav.dart';
import 'package:savings_club/constants/constants.dart';

class BankTransfer extends StatefulWidget {
  const BankTransfer({Key? key}) : super(key: key);

  @override
  State<BankTransfer> createState() => _BankTransferState();
}

class _BankTransferState extends State<BankTransfer> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: backArrow(context),
            backgroundColor: bgAppbar,
            centerTitle: true,
            title: Text(
              "Bank Transfer",
              style:
                  GoogleFonts.acme(fontWeight: FontWeight.bold, fontSize: 25),
            ),
          ),
          bottomNavigationBar: CurvedNavigationBar(
            height: 60,
            buttonBackgroundColor: const Color.fromARGB(255, 178, 214, 243),
            animationCurve: Curves.easeOutQuad,
            color: const Color.fromARGB(255, 251, 241, 241),
            backgroundColor: bgAppbar,
            key: _bottomNavKey,
            items: const <Widget>[
              Icon(
                Icons.home,
                size: 30,
              ),
              Icon(
                Icons.groups_rounded,
                size: 30,
              ),
              Icon(
                Icons.person_pin,
                size: 30,
              ),
            ],
            onTap: (index) {
              setState(() {
                // _page = index;
                // print(index);
              });
            },
          ),
        ),
      ),
    );
  }
}
