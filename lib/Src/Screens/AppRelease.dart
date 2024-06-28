import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UploadPage extends StatefulWidget {
  const UploadPage({super.key});

  @override
  UploadPageState createState() => UploadPageState();
}

class UploadPageState extends State<UploadPage> {
  static const googleDriveChannel = MethodChannel('googledrivePlatform');
  var data = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: Container());
  }
}
