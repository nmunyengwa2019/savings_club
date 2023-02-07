import 'dart:ffi';

import 'package:intl/intl.dart';

String greeting(){

  String morning = "Good morning";
  String afternoon = "Good afternoon";
  String  evening = "Good evening";
  String night = "Good night";


  DateTime dateTime = DateTime.now();
  final DateFormat format = DateFormat('H');

  int time =  int.parse(format.format(dateTime));
  String greet = time>=12 &&time<18?afternoon:time>=18 && time<21?evening:time>=21&&time<=23?night:morning;
  print("$time");
 return greet;
}