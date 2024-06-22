import 'package:credbox/Theme/Themes.dart';
import 'package:flutter/material.dart';

class SetPassword extends StatelessWidget {
  final String fname;
  final String mname;
  final String lname;
  final List<String> questions;
  final List<String> answers;
  const SetPassword(
      {super.key,
      required this.fname,
      required this.mname,
      required this.lname,
      required this.questions,
      required this.answers});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text(
              "Set Password",
              style: Themes.style,
            ),
            ElevatedButton(
                onPressed: () {
                  print("*******************************************");
                  print(fname);
                  print(mname);
                  print(lname);
                  print(questions);
                  print(answers);
                  print("password");
                  print("*******************************************");
                },
                child: const Text("Signup"))
          ],
        ),
      ),
    );
  }
}
