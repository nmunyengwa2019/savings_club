// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:savings_club/constants/onboardingButton.dart';
import 'package:savings_club/models/api_response.dart';
import 'package:savings_club/screens/register.dart';
import 'package:savings_club/services/user_service.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool loading = false;

  CircularProgressIndicator _LoadingProgress() {
    return const CircularProgressIndicator(
      backgroundColor: Colors.amber,
      color: Colors.white,
    );
  }

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  void _loginUser() async {
    // setState(() {
    //   loading = true;
    // });

    ApiResponse response =
        await login(_emailController.text, _passwordController.text);
    setState(() {
      loading = false;
    });

    void loginDecision() {
      if (response.error == null) {
        //login user

        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("this one ${response.data}"),
        ));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("this one ${response.error}"),
        ));
      }
    }

    //Show a  loading screen and then a decision function[ show home page or error snackbar]
    // _loading ? const Loading() : loginDecision();
  }

  CircularProgressIndicator progressIndicatorRoute() {
    return const CircularProgressIndicator(
      color: Colors.white,
      backgroundColor: Colors.grey,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Login'),
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
              txtButton("Login", () {
                if (formKey.currentState!.validate()) {
                  setState(() {
                    loading = true;
                  });
                  _loginUser();
                  setState(() {
                    loading = false;
                  });
                }
              }),
              //Don't have an account button
              onboardingButton(
                  "Don't have an account? ", "Register", navToRegister),
            ],
          )),
    ));
  }

  TextButton txtButton(String lable, Function onpressed) {
    return TextButton(
      onPressed: () => onpressed(),
      style: ButtonStyle(
          backgroundColor:
              MaterialStateColor.resolveWith((states) => Colors.blue),
          padding: MaterialStateProperty.resolveWith(
              (states) => const EdgeInsets.symmetric(vertical: 8))),
      child: loading ? progressIndicatorRoute() : Text(lable),
    );
  }

  Future<Navigator> navToRegister() async {
    return await Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const Register()),
        (Route<dynamic> route) => false);
  }
}
