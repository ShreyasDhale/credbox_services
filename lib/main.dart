import 'package:credbox/Src/Router/appRoutes.dart';
import 'package:credbox/Theme/Themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Credbox Services',
      theme: Themes.theme,
      onGenerateRoute: AppRoute.generateRoute,
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoute.homePage,
    );
  }
}
