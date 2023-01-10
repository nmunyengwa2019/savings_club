import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
// ignore: unnecessary_import, implementation_imports
import 'package:flutter/src/foundation/key.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_club/constants/constants.dart';

class Payments extends StatefulWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  State<Payments> createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.grey[300],
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: bgAppbar,
            title: Text(
              "Payment",
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
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.paid_rounded,
                      size: 40,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/ecocash');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: bgColor,
                              width: 2,
                            ),
                            borderRadius: const BorderRadius.horizontal(
                                right: Radius.circular(30.0),
                                left: Radius.circular(30.0))),
                        width: 300,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          child: Center(
                            child: Text(
                              "Use Ecocash",
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.paypal_rounded,
                      size: 40,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/paypal');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: bgColor,
                              width: 2,
                            ),
                            color: Colors.white,
                            borderRadius: const BorderRadius.horizontal(
                                right: Radius.circular(30.0),
                                left: Radius.circular(30.0))),
                        width: 300,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          child: Center(
                            child: Text(
                              "Use PayPal",
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.account_balance_outlined,
                      size: 40,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/bankTransfer');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: bgColor,
                              width: 2,
                            ),
                            color: Colors.white,
                            borderRadius: const BorderRadius.horizontal(
                                right: Radius.circular(30.0),
                                left: Radius.circular(30.0))),
                        width: 300,
                        margin: const EdgeInsets.symmetric(horizontal: 10),
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 6),
                          child: Center(
                            child: Text(
                              "Bank Transfer",
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
