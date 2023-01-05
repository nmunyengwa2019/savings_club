import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_club/constants/constants.dart';
import 'package:savings_club/screens/HomePage.dart';

class SelectCard extends StatelessWidget {
  SelectCard({Key? key, required this.choice, required this.pageRoute})
      : super(key: key);
  Choice choice;
  Function pageRoute;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: pageRoute(),
      child: Card(
        borderOnForeground: true,
        color: Color.fromARGB(255, 251, 241, 241),
        surfaceTintColor: Colors.amber,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Icon(
                choice.icon,
                color: Color.fromARGB(255, 15, 162, 199),
                size: 40,
              )),
              Text(
                choice.description,
                style: GoogleFonts.acme(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 4, 13, 17),
                    fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
