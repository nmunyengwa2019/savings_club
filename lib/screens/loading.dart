import 'package:flutter/material.dart';
import 'package:savings_club/screens/HomePage.dart';
import 'package:savings_club/screens/login.dart';

import '../models/api_response.dart';
import '../services/user_service.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  // ignore: non_constant_identifier_names
  void _LoadUserInfo() async {
    String token = await getToken();
    if (token == '') {
      Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (BuildContext context) => HomePage()),
          (route) => false);
    } else {
      ApiResponse response = await getUserDetails();
      if (response.error == null) {
        // ignore: use_build_context_synchronously
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => HomePage()),
            (route) => false);
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(' error ${response.error}'),
        ));
      }
    }
  }

  @override
  void initState() {
    _LoadUserInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
        color: Colors.grey,
        child: Center(
          child: CircularProgressIndicator(
            color: Colors.green,
          ),
        ),
      ),
    ));
  }
}
