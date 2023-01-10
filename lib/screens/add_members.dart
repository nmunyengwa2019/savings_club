import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_club/constants/constants.dart';

class AddMembers extends StatefulWidget {
  const AddMembers({Key? key}) : super(key: key);

  @override
  State<AddMembers> createState() => _AddMembersState();
}

class _AddMembersState extends State<AddMembers> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: bgAppbar,
            centerTitle: true,
            title: const Text("Add Members"),
          ),
          bottomNavigationBar: BottomNavigationBar(
              backgroundColor: bgAppbar,
              elevation: 4,
              unselectedItemColor: Color.fromARGB(255, 200, 200, 200),
              selectedItemColor: Color.fromARGB(255, 247, 246, 248),
              selectedLabelStyle: GoogleFonts.acme(
                fontSize: 16,
              ),
              items: const <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                    icon: Icon(Icons.paid_rounded), label: "Deposit"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.groups_rounded), label: "Members"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_pin), label: "My Profile"),
              ]),
        ),
      ),
    );
  }
}
