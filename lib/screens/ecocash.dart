import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_club/constants/backArrow.dart';
import 'package:savings_club/constants/constants.dart';
import 'package:savings_club/constants/submitButton.dart';
import 'package:savings_club/constants/text_form.dart';

class Ecocash extends StatefulWidget {
  const Ecocash({Key? key}) : super(key: key);

  @override
  State<Ecocash> createState() => _EcocashState();
}

class _EcocashState extends State<Ecocash> {
  TextEditingController _sourceNumberController = TextEditingController();
  TextEditingController _destinationNumberController = TextEditingController();
  TextEditingController _amountController = TextEditingController();
  TextEditingController _referenceController = TextEditingController();

  GlobalKey<FormState> formKey = GlobalKey();
  final GlobalKey<CurvedNavigationBarState> _bottomNavKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    double phoneWidth = MediaQuery.of(context).size.width;
    // double height = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
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
            ),
            appBar: AppBar(
              leading: backArrow(context),
              centerTitle: true,
              backgroundColor: bgAppbar,
              title: Text(
                "Ecocash",
                style:
                    GoogleFonts.acme(fontWeight: FontWeight.bold, fontSize: 25),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: formKey,
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 8,
                    ),
                    sampleField(TextInputType.phone, _sourceNumberController,
                        "Your mobile number"),
                    const SizedBox(
                      height: 8,
                    ),
                    sampleField(
                        TextInputType.text, _amountController, "Amount"),
                    const SizedBox(
                      height: 8,
                    ),
                    sampleField(TextInputType.text,
                        _destinationNumberController, "Destination number"),
                    const SizedBox(
                      height: 8,
                    ),
                    sampleField(TextInputType.text, _referenceController,
                        "Reference number e.g Mukando"),
                    const SizedBox(
                      height: 10,
                    ),
                    InkWell(
                      onTap: () {
                        print("object");
                      },
                      child: submitButton("Pay", phoneWidth),
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    Container(
                      child: const Center(
                        child: Text(
                          "Check your mobile number to input pin",
                          style: TextStyle(
                              color: Color.fromARGB(255, 109, 107, 107)),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )),
      ),
    );
  }
}

ecocashPayment() {
  print("");
}
