import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:savings_club/constants/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/User.dart';
import '../models/api_response.dart';

//login
Future<ApiResponse> login(String email, String password) async {
  ApiResponse apiResponse = ApiResponse();
  try {
    final response = await http.post(Uri.parse(loginUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body:
            jsonEncode(<String, String>{'email': email, 'password': password}));
    // apiResponse.error = "${response.body}";

    switch (response.statusCode) {
      case 200:
        // ignore: avoid_print
        print("data collected");
        apiResponse.data = User.fromJson(jsonDecode(response.body));
        break;
      case 422:
        final errors = jsonDecode(response.body)['errors'];
        apiResponse.error = errors[errors.keys.elementAt(0)][0];
        break;
      default:
        apiResponse.error = somethingWentWrong;
        break;
    }
  } catch (e) {
    apiResponse.error = serverError;
  }
  return apiResponse;
}

Future<ApiResponse> registration(String name, String email, String password,
    String pasword_confirmation) async {
  ApiResponse apiResponse = ApiResponse();
  try {
    final response = await http.post(Uri.parse(registerUrl), headers: {
      'Accept': 'Application/json'
    }, body: {
      'name': name,
      'email': email,
      'password': password,
      'password_confirmation': pasword_confirmation
    });

    switch (response.statusCode) {
      case 200:
        apiResponse.data = User.fromJson(jsonDecode(response.body));
        break;
      case 422:
        final errors = jsonDecode(response.body)['errors'];
        apiResponse.error = errors[errors.keys.elementAt(0)][0];
        break;
      default:
        apiResponse.error = somethingWentWrong;
        break;
    }
  } catch (e) {
    apiResponse.error = serverError;
  }
  return apiResponse;
}

//get user details
Future<ApiResponse> getUserDetails() async {
  ApiResponse apiResponse = ApiResponse();
  try {
    String token = await getToken();

    final response = await http.post(
      Uri.parse(userUrl),
      headers: {'Accept': 'Application/json', 'Authorization': 'Bearer $token'},
      // body: {}
    );

    switch (response.statusCode) {
      case 200:
        apiResponse.data = User.fromJson(jsonDecode(response.body));
        break;
      case 422:
        final errors = jsonDecode(response.body)['errors'];
        apiResponse.error = errors[errors.keys.elementAt(0)][0];
        break;
      default:
        apiResponse.error = somethingWentWrong;
        break;
    }
  } catch (e) {
    apiResponse.error = serverError;
  }
  return apiResponse;
}

Future<String> getToken() async {
  SharedPreferences pref = await SharedPreferences.getInstance();

  return pref.getString("token") ?? '';
}

Future<int> getUserId() async {
  SharedPreferences pref = await SharedPreferences.getInstance();

  return pref.getInt("id") ?? 0;
}

Future<bool> logout() async {
  SharedPreferences pref = await SharedPreferences.getInstance();

  return await pref.remove('token');
}
