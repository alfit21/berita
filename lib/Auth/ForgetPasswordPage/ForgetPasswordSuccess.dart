// ignore_for_file: prefer_const_constructors

import 'package:berita/HomePage/HomePage.dart';
import 'package:berita/Utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgetPasswordSuccess extends StatefulWidget {
  const ForgetPasswordSuccess({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordSuccess> createState() => _ForgetPasswordSuccessState();
}

class _ForgetPasswordSuccessState extends State<ForgetPasswordSuccess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TextButton(
        onPressed: () {
          Get.to(() => HomePage());
        },
        child: Container(
            height: 50,
            alignment: Alignment.center,
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.red),
            child: Text(
              'Go to homepage',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.only(top: Get.height * 0.3),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/logo.jpg',
              width: 200,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Congratulations!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Utils.warna,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'You account is ready to use',
              style: TextStyle(
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
