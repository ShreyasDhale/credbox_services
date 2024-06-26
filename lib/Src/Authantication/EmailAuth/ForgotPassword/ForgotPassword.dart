import 'package:credbox/Src/Router/appRoutes.dart';
import 'package:credbox/Src/Widgets/FormWidgets.dart';
import 'package:credbox/Theme/Themes.dart';
import 'package:flutter/material.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _LoginPageState();
}

class _LoginPageState extends State<ForgotPassword> {
  var fnameController = TextEditingController();
  var mnameController = TextEditingController();
  var lnameController = TextEditingController();

  bool obsicure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
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
                  "Forgot Password",
                  style: Themes.style
                      .copyWith(fontSize: 23, fontWeight: FontWeight.w900),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Enter your details and reset your password",
                  style: Themes.style.copyWith(fontSize: 18),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10,
                ),
                customTextfield(
                    leading: const Icon(Icons.person),
                    controller: fnameController,
                    hint: "First name",
                    keepBorder: true,
                    borderColor: Colors.grey.shade100),
                const SizedBox(
                  height: 10,
                ),
                customTextfield(
                    leading: const Icon(Icons.person),
                    controller: mnameController,
                    hint: "Middle name",
                    keepBorder: true,
                    borderColor: Colors.grey.shade100),
                const SizedBox(
                  height: 10,
                ),
                customTextfield(
                    leading: const Icon(Icons.person),
                    controller: lnameController,
                    hint: "Last name",
                    keepBorder: true,
                    borderColor: Colors.grey.shade100),
                const SizedBox(
                  height: 20,
                ),
                customButton(
                    text: "Fetch Security Question",
                    bgColor: Colors.black,
                    borderRadius: 10,
                    height: 40,
                    onTap: () {
                      Navigator.pushNamed(context, AppRoute.resetPassPage);
                    }),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, AppRoute.loginPage);
                      },
                      child: Text(
                        "  Sign in ?  ",
                        style: Themes.style.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
