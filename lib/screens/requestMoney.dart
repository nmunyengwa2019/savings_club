import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:savings_club/constants/backArrow.dart';

class RequestMoney extends StatefulWidget {
  const RequestMoney({Key? key}) : super(key: key);

  @override
  State<RequestMoney> createState() => _RequestMoneyState();
}

class _RequestMoneyState extends State<RequestMoney> {
  GlobalKey<FormState> formKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    var balance;
    return MaterialApp(
        home: SafeArea(
            child: Scaffold(
      appBar: AppBar(
        leading: backArrow(context),
        title: const Text("Request Money"),
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              Container(
                child: Text("Group Account balance: ZWL $balance"),
              ),
            ],
          ),
        ),
      ),
    )));
  }
}
