// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:berita/Auth/ForgetPasswordPage/ForgetPasswordPage.dart';
import 'package:berita/HomePage/HomePage.dart';
import 'package:berita/Utils.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SiginPage extends StatefulWidget {
  const SiginPage({Key? key}) : super(key: key);

  @override
  State<SiginPage> createState() => _SiginPageState();
}

class _SiginPageState extends State<SiginPage> {
  var isChecked = false;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  var isEmail = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
        reverse: true,
        child: Container(
          padding: EdgeInsets.all(25),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 50),
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/logo.jpg',
                  fit: BoxFit.cover,
                  height: 150,
                  width: 150,
                  alignment: Alignment.center,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                  'Create an Account',
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
                    Get.to(() => HomePage());
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
                    'Continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  otherSigin(Icons.facebook, 'Facebok'),
                  otherSigin(Icons.email, 'Google'),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Center(
                  child: RichText(
                text: TextSpan(
                  // Note: Styles for TextSpans must be explicitly defined.
                  // Child text spans will inherit styles from parent
                  style: const TextStyle(
                    fontSize: 14.0,
                    color: Colors.black54,
                  ),
                  children: <TextSpan>[
                    TextSpan(text: 'Already have an account?'),
                    TextSpan(
                        text: ' Sign in',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Utils.warna,
                        )),
                  ],
                ),
              )),
              SizedBox(
                height: 5,
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    Get.to(() => ForgetPasswordPage());
                  },
                  child: Text(
                    'Forget Password',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black54),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container otherSigin(icon, name) {
    return Container(
      width: 110,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 1,
            offset: Offset(0, 1),
          )
        ],
      ),
      padding: EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: Colors.blue,
          ),
          SizedBox(
            width: 2,
          ),
          Text(
            name,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
        ],
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
