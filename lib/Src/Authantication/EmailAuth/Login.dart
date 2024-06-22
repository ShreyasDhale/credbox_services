import 'package:credbox/Src/Router/appRoutes.dart';
import 'package:credbox/Src/Widgets/FormWidgets.dart';
import 'package:credbox/Theme/Themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  bool obsicure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 40),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Credbox",
                style: Themes.style
                    .copyWith(fontSize: 30, fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 16,
              ),
              ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.asset(
                    "Assets/Images/credbox.jpeg",
                    height: MediaQuery.of(context).size.width * 0.5,
                    width: MediaQuery.of(context).size.width * 0.5,
                  )),
              const SizedBox(
                height: 30,
              ),
              Text(
                "Login",
                style: Themes.style
                    .copyWith(fontSize: 23, fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Enter your email and password to signin",
                style: Themes.style.copyWith(fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              customTextfield(
                  leading: const Icon(Icons.email),
                  controller: emailController,
                  hint: "shreyas12@gmail.com",
                  keepBorder: true,
                  borderColor: Colors.grey.shade100),
              const SizedBox(
                height: 10,
              ),
              customPasswordfield(
                  leading: const Icon(Icons.password),
                  controller: passwordController,
                  hint: "your password",
                  hintColor: Colors.grey,
                  obsicure: obsicure,
                  trailing: IconButton(
                      onPressed: () {
                        setState(() {
                          obsicure = !obsicure;
                        });
                      },
                      icon: obsicure
                          ? const Icon(Icons.visibility)
                          : const Icon(Icons.visibility_off)),
                  borderColor: Colors.grey.shade100),
              const SizedBox(
                height: 20,
              ),
              customButton(
                  text: "Sign In with email",
                  bgColor: Colors.black,
                  borderRadius: 10,
                  height: 40,
                  onTap: () {
                    Get.toNamed(AppRoute.homePage);
                  }),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "Not a member?",
                    style: Themes.style.copyWith(fontSize: 16),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(AppRoute.signupPage1);
                    },
                    child: Text(
                      " Sign up",
                      style: Themes.style.copyWith(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(children: [
                    TextSpan(
                        text: "By clickng continue, you agree to our ",
                        style: Themes.style.copyWith(color: Colors.grey)),
                    TextSpan(
                        text: "Terms of Services ",
                        style: Themes.style.copyWith(color: Colors.black)),
                    TextSpan(
                        text: "and ",
                        style: Themes.style.copyWith(color: Colors.grey)),
                    TextSpan(
                        text: "privacy policy ",
                        style: Themes.style.copyWith(color: Colors.black)),
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
