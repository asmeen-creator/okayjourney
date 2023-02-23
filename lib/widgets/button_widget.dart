import 'package:flutter/material.dart';
import 'package:okayjourney/constants/fonts.dart';

Widget button(onpress, btnname, fontsize) {
  return SizedBox(
    width: 200,
    child: ElevatedButton(
        style: ButtonStyle(
          padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0))),
        ),
        onPressed: onpress,
        child: Text(
          btnname,
          style: TextStyle(
              color: Colors.purple, fontFamily: bold, fontSize: fontsize),
        )),
  );
}
