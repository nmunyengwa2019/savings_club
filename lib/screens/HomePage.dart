// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_club/constants/constants.dart';
import 'package:savings_club/constants/menuIcon.dart';
import 'package:savings_club/constants/selectCard.dart';
import 'package:savings_club/screens/login.dart';
import 'package:savings_club/services/user_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        appBar: AppBar(
          backgroundColor: bgAppbar,
          title: Text(
            "MULA BOX",
            style: GoogleFonts.acme(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
                tooltip: "Logout",
                onPressed: navigateToLogin,
                icon: const Icon(Icons.logout_rounded))
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            onTap: null,
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
        body: Container(
          padding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
          child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 4,
              mainAxisSpacing: 8,
              children: List.generate(
                  choices.length,
                  (index) => SelectCard(
                        choice: choices[index],
                        pageRoute: navigateToLogin,
                      ))),
        ),
      ),
    );
  }

  Future<Navigator> navigateToLogin() async {
    return await Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const Login()),
        (Route<dynamic> route) => false);
  }

  Future<Navigator> payment() async {
    return await Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const Login()),
        (Route<dynamic> route) => false);
  }
}

class Choice {
  Choice({required this.icon, required this.description});
  IconData icon;
  String description;
}

List<Choice> choices = <Choice>[
  Choice(icon: Icons.paid_rounded, description: "Deposit"),
  Choice(icon: Icons.account_balance_outlined, description: "Take Loan"),
  Choice(icon: Icons.payment, description: "Claim"),
  Choice(icon: Icons.account_balance_wallet_sharp, description: "Sum Assured"),
  Choice(icon: Icons.event, description: "Payment Schedule"),
  Choice(icon: Icons.history_outlined, description: "Payment History"),
  Choice(icon: Icons.how_to_vote_outlined, description: "Voting Requests"),
  Choice(icon: Icons.manage_accounts, description: "Update Profile"),
];
