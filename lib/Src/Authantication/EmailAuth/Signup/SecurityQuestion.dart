import 'package:credbox/Src/Authantication/EmailAuth/Signup/SetPassword.dart';
import 'package:credbox/Src/Widgets/DropDown.dart';
import 'package:credbox/Src/Widgets/FormWidgets.dart';
import 'package:credbox/Theme/Themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecurityQuestion extends StatefulWidget {
  final String fname;
  final String mname;
  final String lname;
  const SecurityQuestion(
      {super.key,
      required this.fname,
      required this.mname,
      required this.lname});

  @override
  State<SecurityQuestion> createState() => _SecurityQuestionState();
}

class _SecurityQuestionState extends State<SecurityQuestion> {
  String selectedValue = "Select Security Question";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
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
              CustomDropdownButton(
                  items: const [
                    "Select Security Question",
                    "What is Your School Name?",
                    "What is your city name?"
                  ],
                  selectedValue: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value!;
                    });
                  },
                  leading: const [
                    Icon(Icons.check),
                    Icon(Icons.school),
                    Icon(Icons.location_city)
                  ]),
              customButton(
                  onTap: () {
                    Get.to(SetPassword(
                        fname: widget.fname,
                        mname: widget.mname,
                        lname: widget.lname,
                        questions: const ["question 1", "question 2"],
                        answers: const ["ans 1", "ans 2"]));
                  },
                  borderRadius: 10,
                  bgColor: Colors.black,
                  height: 40,
                  text: "Next")
            ],
          ),
        ),
      ),
    );
  }
}
