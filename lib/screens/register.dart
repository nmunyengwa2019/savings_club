import 'package:flutter/material.dart';
import 'package:savings_club/constants/inputField.dart';
import 'package:savings_club/constants/onboardingButton.dart';
import 'package:savings_club/constants/textButton.dart';
import 'package:savings_club/screens/HomePage.dart';
import 'package:savings_club/screens/login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _surnameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmationController =
      TextEditingController();
  // TextEditingController _nameController = TextEditingController();
  // TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: const Text("Register"),
          centerTitle: true,
        ),
        body: Form(
            key: formKey,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              children: [
                inputField(_nameController, TextInputType.text, "Name"),
                const SizedBox(
                  height: 4,
                ),
                inputField(_surnameController, TextInputType.text, "Surname"),
                const SizedBox(
                  height: 4,
                ),
                inputField(_emailController, TextInputType.emailAddress,
                    "Email address"),
                const SizedBox(
                  height: 4,
                ),
                inputField(_passwordController, TextInputType.text, "Password"),
                const SizedBox(
                  height: 4,
                ),
                inputField(_passwordConfirmationController, TextInputType.text,
                    "Confirm Password"),
                const SizedBox(height: 8),
                txtButton("Register", () {}),
                onboardingButton(
                    "Already have an account? ", "Login", navigateToLogin),
              ],
            )),
      )),
    );
  }

  Future<Navigator> navigateToLogin() async {
    return await Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const Login()),
        (Route<dynamic> route) => false);
  }
}
