import 'package:flutter/material.dart';

const String baseUrl = "http://10.132.161.205:8000/api";
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
const bgColor = Color.fromARGB(255, 31, 85, 117);
const bgAppbar = Color.fromARGB(255, 14, 101, 151);
const submitColor = Color.fromARGB(255, 3, 31, 125);
