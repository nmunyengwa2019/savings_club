import 'dart:ffi';

import 'package:intl/intl.dart';

String greeting(){

  String morning = "Good Morning";
  String afternoon = "Good Afternoon";
  String  evening = "Good Evening";
  String night = "Good Night";


  DateTime dateTime = DateTime.now();
  final DateFormat format = DateFormat('H');

  int time =  int.parse(format.format(dateTime));
  String greet = time>=12 &&time<18?afternoon:time>=18 && time<21?evening:time>=21&&time<=23?night:morning;
  print("$time");
 return greet;
}