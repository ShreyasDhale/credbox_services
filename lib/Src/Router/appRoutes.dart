import 'package:credbox/Src/Arguments/ArgumentsClass.dart';
import 'package:credbox/Src/Authantication/EmailAuth/ForgotPassword.dart';
import 'package:credbox/Src/Authantication/EmailAuth/Login.dart';
import 'package:credbox/Src/Authantication/EmailAuth/Signup/PersonalDetails.dart';
import 'package:credbox/Src/Authantication/EmailAuth/Signup/SecurityQuestion.dart';
import 'package:credbox/Src/Authantication/EmailAuth/Signup/SetPassword.dart';
import 'package:credbox/Src/MainScreen/MainScreen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static const String homePage = "/home";
  static const String loginPage = "/login";
  static const String forgotPassPage = "/resetpass";
  static const String signupPage1 = "/personalDetails";
  static const String signupPage2 = "/securityQuestion";
  static const String signupPage3 = "/setPassword";

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case homePage:
        return MaterialPageRoute(builder: (context) => const MainScreen());
      case loginPage:
        return MaterialPageRoute(
          builder: (context) => LoginPage(),
        );
      case forgotPassPage:
        return MaterialPageRoute(
          builder: (context) => ForgotPassword(),
        );
      case signupPage1:
        return MaterialPageRoute(
          builder: (context) => PersonalDetails(),
        );
      case signupPage2:
        var args = settings.arguments as SecurityQuestionArguments;
        return MaterialPageRoute(
          builder: (context) => SecurityQuestion(
            args: args,
          ),
        );
      case signupPage3:
        var args = settings.arguments as SetPasswordArguments;
        return MaterialPageRoute(
            builder: (context) => SetPassword(
                  args: args,
                ));
      default:
        return MaterialPageRoute(builder: (context) => LoginPage());
    }
  }
}
