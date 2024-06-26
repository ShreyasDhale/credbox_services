import 'package:credbox/Globals/constants.dart';
import 'package:credbox/Src/Arguments/ArgumentsClass.dart';
import 'package:credbox/Src/Router/appRoutes.dart';
import 'package:credbox/Src/Widgets/DropDown.dart';
import 'package:credbox/Src/Widgets/FormWidgets.dart';
import 'package:credbox/Theme/Themes.dart';
import 'package:flutter/material.dart';

class SecurityQuestion extends StatefulWidget {
  final SecurityQuestionArguments args;
  const SecurityQuestion({super.key, required this.args});

  @override
  State<SecurityQuestion> createState() => _SecurityQuestionState();
}

class _SecurityQuestionState extends State<SecurityQuestion> {
  String selectedValue = "";
  var answerController = TextEditingController();

  @override
  void initState() {
    super.initState();
    selectedValue = questions.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Center(
                  child: Text(
                    "Security Questions",
                    style: Themes.style.copyWith(fontSize: 30),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.asset(
                    "Assets/Images/security.png",
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.width * 0.6,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Be carefull because these questions will be asked when you forgot your password",
                  style: Themes.style.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomDropdownButton(
                  decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.only(right: 20, left: 20),
                      fillColor: Colors.white,
                      labelText: "Select Security Question",
                      hintStyle: Themes.style.copyWith(color: Colors.grey),
                      filled: true,
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.grey,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
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
                    controller: answerController,
                    hint: "Delhi Public School (as your answer)"),
                const SizedBox(
                  height: 20,
                ),
                customButton(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoute.signupPage3,
                          arguments: SetPasswordArguments(
                            mname: widget.args.mname,
                            lname: widget.args.lName,
                            fname: widget.args.fName,
                            question: selectedValue,
                            answer: answerController.text.trim(),
                          ));
                    },
                    borderRadius: 10,
                    bgColor: Colors.black,
                    height: 40,
                    text: "Next"),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      "Already on Credbox?  ",
                      style: Themes.style
                          .copyWith(fontSize: 18, color: Colors.grey),
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
                            color: Colors.green,
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
      ),
    );
  }
}
