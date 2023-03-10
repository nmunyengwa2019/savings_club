import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:savings_club/constants/constants.dart';
import 'package:savings_club/constants/onboardingButton.dart';
import 'package:savings_club/models/api_response.dart';
import 'package:savings_club/screens/HomePage.dart';
import 'package:savings_club/screens/register.dart';
import 'package:savings_club/services/user_service.dart';
import 'package:google_fonts/google_fonts.dart';
import '../constants/textButton.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isLoading = false;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  Future<void> _loginUser() async {
    setState(() {
      isLoading = true;
    });

    ApiResponse response =
        await login(_emailController.text, _passwordController.text);
    // setState(() {
    //   loading = false;
    // });

    if (response.error == null) {
      navToHomePage();
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Login Successful"),
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Something went wrong!"),
      ));
    }
    setState(() {
      isLoading = false;
    });
  }

  loadingCircle() => const LoadingIndicator(
        indicatorType: Indicator.ballClipRotateMultiple,
        backgroundColor: Colors.white,
        colors: isLoadingColors,
        strokeWidth: 4.0,
      );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: bgAppbar,
        title: Text(
          'Login',
          style: GoogleFonts.acme(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Form(

          key: formKey,
          child: ListView(

            padding: const EdgeInsets.all(8),
            children: [

              TextFormField(

                  // key: formKey,
                  keyboardType: TextInputType.emailAddress,
                  controller: _emailController,
                  validator: (val) => val!.isEmpty ? 'Email is required' : null,
                  decoration: const InputDecoration(
                    labelText: "Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(width: 1, color: Colors.black12),
                    ),
                  )),
              const SizedBox(
                height: 6,
              ),
              TextFormField(
                  // key: formKey,
                  controller: _passwordController,
                  validator: (val) => val!.length < 6
                      ? 'Password is required. Min 6 characters'
                      : null,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                      borderSide: BorderSide(width: 1, color: Colors.black12),
                    ),
                  )),
              const SizedBox(
                height: 8,
              ),
              txtButton(isLoading ? "Loading..." : "Login", () {
                if (formKey.currentState!.validate()) {
                  _loginUser();
                  // isLoading ? loadingCircle() : navToHomePage();
                }
              }),
              //Don't have an account button
              InkWell(
                onDoubleTap: () {},
                child: isLoading
                    ? loadingCircle()
                    : onboardingButton(
                        "Don't have an account? ", "Register", navToRegister),
              ),
            ],
          )),
    ));
  }

  // TextButton txtButton(String lable, Function onpressed) {
  //   return TextButton(
  //     onPressed: () => onpressed(),
  //     style: ButtonStyle(
  //         backgroundColor:
  //             MaterialStateColor.resolveWith((states) => Colors.blue),
  //         padding: MaterialStateProperty.resolveWith(
  //             (states) => const EdgeInsets.symmetric(vertical: 8))),
  //     child: loading ? progressIndicatorRoute() : Text(lable),
  //   );
  // }

  Future<Navigator> navToRegister() async {
    return await Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const Register()),
        (Route<dynamic> route) => false);
  }

  Future<Navigator> navToHomePage() async {
    return await Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const HomePage()),
        (Route<dynamic> route) => false);
  }
}

const List<Color> isLoadingColors = const [
  // Colors.red,
  // Colors.orange,
  // Colors.yellow,
  Color.fromARGB(255, 58, 112, 60),
  Color.fromARGB(255, 85, 144, 192),
  Color.fromARGB(255, 15, 32, 126),
  Color.fromARGB(255, 205, 42, 234),
];
