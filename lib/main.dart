import 'package:credbox/Src/Screens/MainScreen.dart';
import 'package:credbox/Theme/Themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Credbox Services',
      theme: Themes.theme,
      initialRoute: "/home",
      getPages: [
        GetPage(name: '/home', page: () => const MainScreen()),
        // GetPage(name: '/login', page: () => LoginPage()),
      ],
    );
  }
}
