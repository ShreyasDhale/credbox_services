import 'package:credbox/Src/Authantication/EmailAuth/Signup/SecurityQuestion.dart';
import 'package:credbox/Src/Widgets/FormWidgets.dart';
import 'package:credbox/Theme/Themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ignore: must_be_immutable
class PersonalDetails extends StatelessWidget {
  PersonalDetails({super.key});

  var fnameController = TextEditingController();
  var mnameController = TextEditingController();
  var lnameController = TextEditingController();

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
                "Personal Details",
                style: Themes.style.copyWith(fontSize: 25),
              ),
              const SizedBox(height: 30),
              Image.asset(
                "Assets/Images/personal.png",
                width: MediaQuery.of(context).size.width * 0.5,
                height: MediaQuery.of(context).size.width * 0.5,
                fit: BoxFit.contain,
              ),
              Text(
                "Signup",
                style: Themes.style
                    .copyWith(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                "Let's get started with some personal details which will help us Knowing you!",
                style: Themes.style.copyWith(fontSize: 18, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 7,
              ),
              customTextfield(
                  controller: fnameController,
                  hint: "Your first name",
                  keepBorder: true,
                  borderColor: Colors.grey.shade100),
              const SizedBox(
                height: 10,
              ),
              customTextfield(
                  controller: fnameController,
                  hint: "Your middle name",
                  keepBorder: true,
                  borderColor: Colors.grey.shade100),
              const SizedBox(
                height: 10,
              ),
              customTextfield(
                  controller: fnameController,
                  hint: "Your last name",
                  keepBorder: true,
                  borderColor: Colors.grey.shade100),
              const SizedBox(
                height: 30,
              ),
              customButton(
                  onTap: () {
                    Get.to(const SecurityQuestion(
                        fname: "fname", mname: "mname", lname: "lname"));
                  },
                  text: "Next",
                  bgColor: Colors.black,
                  borderRadius: 10,
                  height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
