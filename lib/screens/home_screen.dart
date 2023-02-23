import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:okayjourney/screens/task1.dart';
import 'package:okayjourney/screens/task2.dart';
import 'package:okayjourney/widgets/button_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.purple[100],
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            SizedBox(height: height * 0.05),
            button(() {
              Get.to(() => const Task1());
            }, "Task 1", 22.0),
            SizedBox(
              height: height * 0.05,
            ),
            button(() {
              Get.to(() => const Task2());
            }, "Task 2", 22.0)
          ]),
        ));
  }
}
