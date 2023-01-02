import 'package:flutter/material.dart';

const String baseUrl = "http://192.168.42.235:8000/api";
const registerUrl = baseUrl + '/register';
const loginUrl = baseUrl + "/login";
const logoutUrl = baseUrl + '/logout';
const userUrl = baseUrl + '/user';
const postsUrl = baseUrl + '/posts';
const commentsUrl = baseUrl + '/comments';

const serverError = "Internal Server Error";
const somethingWentWrong = "Something went wrong";
const unauthorized = "unauthorized";
