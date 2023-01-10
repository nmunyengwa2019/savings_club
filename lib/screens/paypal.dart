import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_club/constants/bottomNav.dart';
import 'package:savings_club/constants/constants.dart';

class PayPal extends StatefulWidget {
  const PayPal({Key? key}) : super(key: key);

  @override
  State<PayPal> createState() => _PayPalState();
}

class _PayPalState extends State<PayPal> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
            bottomNavigationBar: CurvedNavigationBar(
              height: 60,
              buttonBackgroundColor: Color.fromARGB(255, 178, 214, 243),
              animationCurve: Curves.easeOutQuad,
              color: Color.fromARGB(255, 251, 241, 241),
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
            appBar: AppBar(
              backgroundColor: bgAppbar,
              centerTitle: true,
              title: Text(
                "PayPal",
                style:
                    GoogleFonts.acme(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            )),
      ),
    );
  }
}
