import 'package:credbox/Theme/Themes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessagesScreen extends StatefulWidget {
  const MessagesScreen({super.key});

  @override
  State<MessagesScreen> createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Messages"),
        titleTextStyle:
            Themes.style.copyWith(color: Colors.white, fontSize: 23),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.green.shade300,
      ),
      body: const Center(child: Text("Messages Screen")),
    );
  }
}
