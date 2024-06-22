import 'package:credbox/Src/Arguments/ArgumentsClass.dart';
import 'package:credbox/Src/AssetNames/AssetNames.dart';
import 'package:credbox/Src/Router/appRoutes.dart';
import 'package:credbox/Src/Widgets/FormWidgets.dart';
import 'package:credbox/Theme/Themes.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

// ignore: must_be_immutable
class SetPassword extends StatelessWidget {
  final SetPasswordArguments args;
  SetPassword({
    super.key,
    required this.args,
  });

  var pass1 = TextEditingController();
  var pass2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text(
                "Set Password",
                style: Themes.style.copyWith(fontSize: 30),
              ),
              Lottie.asset(Animations.lock,
                  repeat: false,
                  fit: BoxFit.cover,
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.width * 0.5),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Let's secure your account",
                style: Themes.style
                    .copyWith(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "Create a strong non-guessable and non-forgatable password",
                textAlign: TextAlign.center,
                style: Themes.style.copyWith(fontSize: 17, color: Colors.grey),
              ),
              const SizedBox(
                height: 20,
              ),
              customPasswordfield(
                  controller: pass1,
                  hint: "Create Password",
                  leading: const Icon(Icons.password)),
              const SizedBox(
                height: 10,
              ),
              customPasswordfield(
                  controller: pass2,
                  hint: "Confirm Password",
                  leading: const Icon(Icons.password)),
              const SizedBox(
                height: 20,
              ),
              customButton(
                  onTap: () {
                    print("*******************************************");
                    print(args.fname);
                    print(args.mname);
                    print(args.lname);
                    print(args.question);
                    print(args.answer);
                    print("password");
                    print("*******************************************");
                  },
                  text: "Create Account",
                  bgColor: Colors.green,
                  borderRadius: 10,
                  height: 40),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    "Already on Credbox?  ",
                    style:
                        Themes.style.copyWith(fontSize: 18, color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, AppRoute.loginPage, (context) => false);
                    },
                    child: Text(
                      "Signin",
                      style: Themes.style.copyWith(
                          fontSize: 18,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
