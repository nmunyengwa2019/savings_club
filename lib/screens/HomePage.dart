import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            backgroundColor: Colors.deepPurpleAccent,
            title: Text(
              "E-sure",
              style: GoogleFonts.bebasNeue(
                  fontWeight: FontWeight.bold, fontSize: 25),
            ),
            centerTitle: true,
          ),
          body: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  //Welcome message
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      'Welcome to iSave. Save your money ',
                      style: GoogleFonts.bebasNeue(fontSize: 20),
                    ),
                  ),
                  //email field
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.white),
                          color: Colors.white),
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: const TextField(
                        decoration: InputDecoration(
                            labelText: "Email",
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            hintText: "Email"),
                      ),
                    ),
                  ),
                  // SizedBox(height: 8,),
                  //password field
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: const TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Password",
                          border: InputBorder.none,
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                          hintText: "Password",
                        ),
                      ),
                    ),
                  ),
                  // SizedBox(height: 8,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 18),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.deepPurpleAccent)),
                      child: Center(
                          child: Text(
                        "Submit",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )),
                    ),
                  ),

                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 25, vertical: 8),
                    child: Row(
                      children: [
                        Text("Don\'t have an account? "),
                        InkWell(
                          onTap: () {
                            print("redirect to registration page");
                          },
                          child: Container(
                              child: Text(
                            "Register",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.deepPurpleAccent,
                                fontWeight: FontWeight.bold),
                          )),
                        )
                      ],
                    ),
                  ),

                  //Submit button
                ],
              ),
            ),
          )),
    );
  }
}
