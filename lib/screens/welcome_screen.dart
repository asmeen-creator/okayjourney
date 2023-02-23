import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:okayjourney/constants/fonts.dart';
import 'package:okayjourney/screens/home_screen.dart';
import 'package:okayjourney/widgets/button_widget.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 144, 17, 167),
      body: Center(
        child: Column(children: [
          SizedBox(height: height * 0.2),
          Image(
            image: const AssetImage('assets/images/logo.png'),
            height: height * 0.1,
          ),
          SizedBox(
            height: height * 0.05,
          ),
          const Text("Free Bus Ticketing Service",
              style: TextStyle(
                  fontFamily: medium, color: Colors.white, fontSize: 20)),
          const Spacer(),
          button(() {
            Get.to(() => const HomeScreen());
          }, "Welcome", 22.0),
          SizedBox(
            height: height * 0.1,
          )
        ]),
      ),
    );
  }
}
