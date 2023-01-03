import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:savings_club/screens/login.dart';

class LogNav extends StatelessWidget {
  const LogNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<Navigator> navigateToLogin() async {
      return await Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (context) => const Login()),
          (Route<dynamic> route) => false);
    }

    return MaterialApp(
      home: Scaffold(
        body: Text(""),
      ),
    );
  }
}
