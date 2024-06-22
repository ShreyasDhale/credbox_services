import 'package:credbox/Src/Authantication/EmailAuth/Login.dart';
import 'package:credbox/Src/Authantication/EmailAuth/Signup/PersonalDetails.dart';
import 'package:credbox/Src/MainScreen/MainScreen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static const String homePage = "/home";
  static const String loginPage = "/login";

  static const String signupPage1 = "/personalDetails";

  static Map<String, WidgetBuilder> routes = {
    homePage: (context) => const MainScreen(),
    loginPage: (context) => LoginPage(),
    signupPage1: (context) => PersonalDetails(),
  };
}
