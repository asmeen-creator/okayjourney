import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:okayjourney/constants/fonts.dart';

class Task2 extends StatefulWidget {
  const Task2({Key? key}) : super(key: key);

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  File? pickedImage;
  void imagePicker() {
    Get.bottomSheet(
      SingleChildScrollView(
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
          ),
          child: Container(
            color: Colors.white,
            height: 200,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Pic Image From",
                    style: TextStyle(fontSize: 20, fontFamily: bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      pickImage();
                    },
                    icon: const Icon(Icons.camera),
                    label: const Text("CAMERA"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      Get.back();
                    },
                    icon: const Icon(Icons.close),
                    label: const Text("CANCEL"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  pickImage() async {
    try {
      final photo = await ImagePicker().pickImage(source: ImageSource.camera);
      if (photo == null) return;
      final tempImage = File(photo.path);
      setState(() {
        pickedImage = tempImage;
      });

      Get.back();
    } catch (error) {
      debugPrint(error.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: const Color.fromARGB(255, 188, 139, 197),
            body: Container(
                margin: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 200,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black, width: 5),
                              borderRadius: const BorderRadius.all(
                                Radius.circular(120),
                              ),
                            ),
                            child: ClipOval(
                              child: pickedImage != null
                                  ? Image.file(pickedImage!,
                                      width: 180,
                                      height: 180,
                                      fit: BoxFit.cover)
                                  : Image.asset(
                                      'assets/images/profile.jpg',
                                      width: 170,
                                      height: 170,
                                      fit: BoxFit.cover,
                                    ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 15,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.camera_alt,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton.icon(
                          onPressed: () {
                            imagePicker();
                          },
                          icon: const Icon(Icons.add_a_photo_sharp),
                          label: const Text(
                            'UPLOAD PROFILE',
                            style: TextStyle(fontFamily: regular),
                          )),
                    )
                  ],
                ))));
  }
}
