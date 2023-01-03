// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:savings_club/constants/constants.dart';
import 'package:savings_club/constants/menuIcon.dart';
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
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: bgAppbar,
          title: Text(
            "MULA BOX",
            style: GoogleFonts.acme(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
                onPressed: navigateToLogin,
                icon: const Icon(Icons.logout_outlined))
          ],
        ),
        body: SingleChildScrollView(
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  menuIcon(),
                  SizedBox(
                    height: 6,
                  ),
                  // menuIcon()
                ],
              ),
              Column(
                children: [
                  // menuIcon(),
                  SizedBox(
                    height: 6,
                  ),
                  menuIcon(),
                ],
              ),
              Column(
                children: [
                  // menuIcon(),
                  SizedBox(
                    height: 6,
                  ),
                  menuIcon(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<Navigator> navigateToLogin() async {
    return await Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => Login()),
        (Route<dynamic> route) => false);
  }
}
