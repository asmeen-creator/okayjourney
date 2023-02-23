import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:okayjourney/screens/task1.dart';
import 'package:okayjourney/screens/task2.dart';
import 'package:okayjourney/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const WelcomeScreen(),
    );
  }
}
