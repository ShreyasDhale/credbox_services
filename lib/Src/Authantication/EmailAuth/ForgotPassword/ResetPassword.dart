import 'package:credbox/Globals/constants.dart';
import 'package:credbox/Src/Router/appRoutes.dart';
import 'package:credbox/Src/Widgets/DropDown.dart';
import 'package:credbox/Src/Widgets/FormWidgets.dart';
import 'package:credbox/Theme/Themes.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _LoginPageState();
}

class _LoginPageState extends State<ResetPassword> {
  String selectedValue = "";

  var answerController = TextEditingController();
  var pass1Controller = TextEditingController();
  var pass2Controller = TextEditingController();

  bool answerValid = false;
  bool newPass = true;
  bool confPass = true;

  @override
  void initState() {
    super.initState();
    selectedValue = questions.first;
  }

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
                  !answerValid ? "Security Question" : "Reset Password",
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
                !answerValid
                    ? Column(
                        children: [
                          CustomDropdownButton(
                            decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.only(right: 20, left: 20),
                                fillColor: Colors.white,
                                labelText: "Select Security Question",
                                hintStyle:
                                    Themes.style.copyWith(color: Colors.grey),
                                filled: true,
                                border: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    ),
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)))),
                            items: questions,
                            selectedValue: selectedValue,
                            onChanged: (value) {
                              setState(() {
                                selectedValue = value!;
                              });
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          customTextfield(
                              leading: const Icon(Icons.person),
                              controller: answerController,
                              hint: "Answer",
                              keepBorder: true,
                              borderColor: Colors.grey.shade100),
                        ],
                      )
                    : const SizedBox(),
                answerValid
                    ? Column(
                        children: [
                          customPasswordfield(
                              leading: const Icon(Icons.password),
                              controller: pass1Controller,
                              obsicure: newPass,
                              hint: "Create New Password",
                              trailing: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      newPass = !newPass;
                                    });
                                  },
                                  icon: newPass
                                      ? const Icon(Icons.visibility)
                                      : const Icon(Icons.visibility_off)),
                              borderColor: Colors.grey.shade100),
                          const SizedBox(
                            height: 10,
                          ),
                          customPasswordfield(
                              leading: const Icon(Icons.password),
                              obsicure: confPass,
                              controller: pass2Controller,
                              hint: "Conferm New password",
                              trailing: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      confPass = !confPass;
                                    });
                                  },
                                  icon: confPass
                                      ? const Icon(Icons.visibility)
                                      : const Icon(Icons.visibility_off)),
                              borderColor: Colors.grey.shade100),
                        ],
                      )
                    : const SizedBox(),
                const SizedBox(
                  height: 20,
                ),
                customButton(
                    text: answerValid ? "Reset Passwoed" : "Validate Answer",
                    bgColor: Colors.black,
                    borderRadius: 10,
                    height: 40,
                    onTap: () {
                      setState(() {
                        answerValid = !answerValid;
                      });
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
