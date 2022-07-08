// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:berita/Auth/SiginPage.dart';
import 'package:berita/Utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:get/get.dart';

class HowUserPage extends StatefulWidget {
  const HowUserPage({Key? key}) : super(key: key);

  @override
  State<HowUserPage> createState() => _HowUserPageState();
}

class _HowUserPageState extends State<HowUserPage> {
  var elevColor = Colors.white;
  var elevColor2 = Colors.white;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: TextButton(
        onPressed: () {
          Get.to(() => SiginPage());
        },
        child: Container(
            height: 50,
            alignment: Alignment.center,
            padding: EdgeInsets.all(15),
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50), color: Colors.red),
            child: Text(
              'Continue',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )),
      ),
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Utils.warna,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Do You?',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(lorem(paragraphs: 1, words: 20)),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  elevColor = Utils.warna.withOpacity(0.5);
                  elevColor2 = Colors.white;
                });
              },
              child: Card(
                elevation: 5,
                shadowColor: elevColor,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Utils.warna.withOpacity(0.5),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.house_siding_rounded,
                          color: Utils.warna,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'New Agency',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              lorem(paragraphs: 1, words: 20),
                              style: TextStyle(
                                color: Color.fromARGB(255, 99, 97, 97),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  elevColor2 = Utils.warna.withOpacity(0.5);
                  elevColor = Colors.white;
                });
              },
              child: Card(
                elevation: 5,
                shadowColor: elevColor2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Utils.warna.withOpacity(0.5),
                          shape: BoxShape.circle,
                        ),
                        child: Icon(
                          Icons.person,
                          color: Utils.warna,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Personal',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              lorem(paragraphs: 1, words: 20),
                              style: TextStyle(
                                color: Color.fromARGB(255, 99, 97, 97),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
