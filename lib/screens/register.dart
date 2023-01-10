import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:savings_club/constants/constants.dart';
import 'package:savings_club/constants/inputField.dart';
import 'package:savings_club/constants/onboardingButton.dart';
import 'package:savings_club/constants/textButton.dart';
import 'package:savings_club/models/api_response.dart';
import 'package:savings_club/screens/HomePage.dart';
import 'package:savings_club/screens/login.dart';
import 'package:savings_club/services/user_service.dart';
import 'package:google_fonts/google_fonts.dart';

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
  bool isLoading = false;
  loadingCircle() => const LoadingIndicator(
        indicatorType: Indicator.ballScaleMultiple,
        backgroundColor: Colors.white,
        colors: isLoadingColors,
        strokeWidth: 4.0,
      );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: bgAppbar,
          title: Text(
            "Register",
            style: GoogleFonts.acme(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Form(
            key: formKey,
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              children: [
                inputField(_nameController, TextInputType.text, "Name", false),
                const SizedBox(
                  height: 4,
                ),
                inputField(
                    _surnameController, TextInputType.text, "Surname", false),
                const SizedBox(
                  height: 4,
                ),
                inputField(_emailController, TextInputType.emailAddress,
                    "Email address", false),
                const SizedBox(
                  height: 4,
                ),
                inputField(
                    _passwordController, TextInputType.text, "Password", true),
                const SizedBox(
                  height: 4,
                ),
                inputField(_passwordConfirmationController, TextInputType.text,
                    "Confirm Password", true),
                const SizedBox(height: 8),
                txtButton(isLoading ? "Registering..." : "Register", () {
                  if (formKey.currentState!.validate()) {
                    _registerUser();
                  } else {}
                }),
                isLoading
                    ? loadingCircle()
                    : onboardingButton(
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

  Future<ApiResponse> _registerUser() async {
    setState(() {
      isLoading = true;
    });
    ApiResponse response = await registration(
        _nameController.text,
        _emailController.text,
        _passwordController.text,
        _passwordConfirmationController.text);
    setState(() {
      isLoading = false;
    });
    navigateToLogin();
    return response;
  }
}

const List<Color> isLoadingColors = const [
  // Colors.red,
  Colors.orange,
  // Colors.yellow,
  Color.fromARGB(255, 58, 112, 60),
  Color.fromARGB(255, 85, 144, 192),
  Color.fromARGB(255, 15, 32, 126),
  Color.fromARGB(255, 205, 42, 234),
];
