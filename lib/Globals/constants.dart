// List of Bottom bar screens

import 'package:credbox/Src/Screens/Blogs.dart';
import 'package:credbox/Src/Screens/Home.dart';
import 'package:credbox/Src/Screens/News.dart';
import 'package:credbox/Src/Screens/Notification.dart';
import 'package:credbox/Src/Screens/Profile.dart';
import 'package:flutter/material.dart';

List<String> questions = const [
  "Your Favourite Color",
  "Your Favourite Pet",
  "Your First School"
];

List<Widget> screens = const [
  HomeScreen(),
  NewsScreen(),
  NotificationScreen(),
  BlogScreen(),
  ProfileScreen()
];
