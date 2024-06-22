import 'package:credbox/Theme/Themes.dart';
import 'package:flutter/material.dart';

Widget customTextfield({
  required TextEditingController controller,
  TextInputType type = TextInputType.name,
  Color? borderColor,
  Color? fillColor,
  String hint = "Enter Text",
  Color hintColor = Colors.grey,
  bool keepBorder = true,
  bool enabled = true,
  bool multiLine = true,
  Widget? leading,
  Widget? trailing,
}) {
  return SizedBox(
    width: double.maxFinite,
    child: TextFormField(
      keyboardType: type,
      controller: controller,
      maxLines: multiLine ? null : 1,
      style: Themes.style,
      enabled: enabled,
      onChanged: (value) {},
      decoration: InputDecoration(
          filled: true,
          hintText: hint,
          hintStyle: Themes.style.copyWith(color: hintColor),
          fillColor: fillColor ?? Colors.white,
          focusColor: Colors.blue,
          contentPadding: const EdgeInsets.only(right: 10, left: 10),
          labelStyle: Themes.style,
          prefixIcon: leading,
          suffixIcon: trailing,
          border: keepBorder
              ? OutlineInputBorder(
                  borderSide:
                      BorderSide(color: borderColor ?? Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(10))
              : null),
    ),
  );
}

Widget customPasswordfield(
    {required TextEditingController controller,
    TextInputType type = TextInputType.name,
    Color borderColor = Colors.black,
    String hint = "Enter Text",
    Color hintColor = Colors.grey,
    Widget leading = const SizedBox(),
    Widget trailing = const SizedBox(),
    bool obsicure = true}) {
  return SizedBox(
    width: double.maxFinite,
    child: TextFormField(
      keyboardType: type,
      obscureText: obsicure,
      controller: controller,
      style: Themes.style,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          focusColor: Colors.blue,
          hintText: hint,
          contentPadding: const EdgeInsets.only(right: 10, left: 10),
          hintStyle: Themes.style.copyWith(color: hintColor),
          prefixIcon: leading,
          suffixIcon: trailing,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: borderColor, width: 1),
              borderRadius: BorderRadius.circular(10))),
    ),
  );
}

Widget customButton(
    {required String text,
    required Function onTap,
    Color bgColor = Colors.blue,
    Color fgColor = Colors.white,
    Widget leading = const SizedBox(),
    double height = 50,
    double width = 600,
    bool loader = false,
    double borderRadius = 100}) {
  return SizedBox(
    width: width,
    child: ElevatedButton(
      onPressed: () => onTap(),
      style: ElevatedButton.styleFrom(
        foregroundColor: fgColor,
        backgroundColor: bgColor,
        shadowColor: Colors.grey.shade800,
        elevation: 3,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        minimumSize: Size.fromHeight(height),
      ),
      child: loader
          ? const CircularProgressIndicator(
              color: Colors.white,
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                leading,
                Text(text),
              ],
            ),
    ),
  );
}

Widget decoratedListTile({
  required String title,
  String subtitle = "",
  List<Color> bgColors = const [],
  Color fgColor = Colors.white,
  double borderRadius = 0,
  Widget? leading,
  Widget? trailing,
}) {
  return Container(
    decoration: BoxDecoration(
        gradient: LinearGradient(colors: bgColors),
        borderRadius: BorderRadius.circular(borderRadius)),
    child: ListTile(
      title: Text(
        title,
        style: Themes.style.copyWith(color: fgColor),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      leading: (leading != null) ? leading : null,
      trailing: (trailing != null) ? trailing : null,
    ),
  );
}
