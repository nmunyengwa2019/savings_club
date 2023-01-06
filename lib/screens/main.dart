import 'package:flutter/material.dart';
import 'package:savings_club/screens/HomePage.dart';
import 'package:savings_club/screens/login.dart';
import 'package:savings_club/screens/payments.dart';
import 'package:savings_club/screens/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SavingsClub',
      initialRoute: '/',
      routes: {
        '/payment': (context) => const Payments(),
        '/register': (context) => const Register()
      },
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const Login(),
    );
  }
}
