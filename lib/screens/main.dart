import 'package:flutter/material.dart';
import 'package:savings_club/screens/HomePage.dart';
import 'package:savings_club/screens/add_members.dart';
import 'package:savings_club/screens/bankTransfer.dart';
import 'package:savings_club/screens/ecocash.dart';
import 'package:savings_club/screens/landing_page/landing_page.dart';
import 'package:savings_club/screens/login.dart';
import 'package:savings_club/screens/payments.dart';
import 'package:savings_club/screens/paypal.dart';
import 'package:savings_club/screens/register.dart';
import 'package:savings_club/screens/requestMoney.dart';

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
        '/register': (context) => const Register(),
        '/login':(context)=> const Login(),
        '/paypal': (context) => const PayPal(),
        '/ecocash': (context) => const Ecocash(),
        '/bankTransfer': (context) => const BankTransfer(),
        '/addMembers': (context) => const AddMembers(),
        '/requestMoney': (context) => const RequestMoney(),
      },
      theme: ThemeData(
        fontFamily: 'AvenirRoman',

        primarySwatch: Colors.deepPurple,
      ),
      home: const LandingPage(),
    );
  }
}
