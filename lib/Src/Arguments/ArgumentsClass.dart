class SecurityQuestionArguments {
  final String? mname;
  final String? fName;
  final String? lName;

  SecurityQuestionArguments({this.mname, this.fName, this.lName});
}

class SetPasswordArguments {
  final String? mname;
  final String? fname;
  final String? lname;
  final String? question;
  final String? answer;

  SetPasswordArguments({
    this.mname,
    this.fname,
    this.lname,
    this.question,
    this.answer,
  });
}
