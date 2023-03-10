import 'package:flutter/material.dart';

const String appName = "Omari";
const String baseUrl = "http://192.168.56.1:8000/api";
const registerUrl = baseUrl + '/register';
const loginUrl = baseUrl + "/login";
const logoutUrl = baseUrl + '/logout';
const userUrl = baseUrl + '/user';
const postsUrl = baseUrl + '/posts';
const commentsUrl = baseUrl + '/comments';

const serverError = "Internal Server Error";
const somethingWentWrong = "Something went wrong";
const unauthorized = "unauthorized";

//Colors
const bgWhite = Colors.white;
const textColor= Color.fromARGB(255, 61, 33, 198);
const bgColor = Color.fromARGB(255, 31, 85, 117);
const bgBlueColor = Color.fromARGB(255, 60, 31, 142);
const bgAppbar = Color.fromARGB(255, 14, 101, 151);
const submitColor = Color.fromARGB(255, 3, 31, 125);
double groupAccountBalance = 0.00;
