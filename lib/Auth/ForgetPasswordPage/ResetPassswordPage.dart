// ignore_for_file: prefer_const_constructors

import 'package:berita/Auth/ForgetPasswordPage/ForgetPasswordSuccess.dart';
import 'package:berita/Utils.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({Key? key}) : super(key: key);

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState extends State<ResetPasswordPage> {
  var isChecked = false;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  var isEmail = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Utils.warna,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Reset Password',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 15),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 50),
                alignment: Alignment.center,
                child: Lottie.asset('assets/passwordinsert.json', width: 250),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'Create a new password',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              nameInput('Email'),
              SizedBox(
                height: 5,
              ),
              Form(
                child: TextFormField(
                    validator: (value) =>
                        EmailValidator.validate(email.text.toString())
                            ? null
                            : "Please enter a valid email",
                    controller: email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(
                            color: Utils.warna,
                          ),
                        ),
                        hintText: 'email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                          borderSide: BorderSide(
                            color: Utils.warna,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(
                              color: Utils.warna,
                            )))),
              ),
              isEmail
                  ? Container()
                  : Container(
                      margin: EdgeInsets.only(top: 5),
                      height: 30,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Utils.warna.withOpacity(0.2),
                      ),
                      child: Row(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          Icon(
                            Icons.warning_amber_rounded,
                            size: 15,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Invalid Email',
                            style: TextStyle(
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
              SizedBox(
                height: 20,
              ),
              nameInput('Password'),
              SizedBox(
                height: 5,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: BorderSide(
                      color: Utils.warna,
                    ),
                  ),
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide(
                      color: Utils.warna,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    borderSide: BorderSide(
                      color: Utils.warna,
                    ),
                  ),
                ),
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    checkColor: Colors.white, // color of tick Mark
                    activeColor: Utils.warna,
                    fillColor: MaterialStateProperty.all(
                      Utils.warna,
                    ),
                    value: isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                  ),
                  Text(
                    'Remember Me',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black54),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {
                  if (EmailValidator.validate(email.text) == false) {
                    setState(() {
                      isEmail = false;
                    });
                  } else {
                    setState(() {
                      isEmail = true;
                    });
                    Get.to(() => ForgetPasswordSuccess());
                  }
                },
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Utils.warna,
                  ),
                  child: Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row nameInput(name) {
    return Row(
      children: <Widget>[
        Text(
          name,
          style: TextStyle(
            color: Colors.black38,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '*',
          style: TextStyle(
            color: Utils.warna,
          ),
        ),
      ],
    );
  }
}
