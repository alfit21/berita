// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:berita/HomePage/HomePage.dart';
import 'package:berita/Utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BookMarkPage extends StatefulWidget {
  const BookMarkPage({Key? key}) : super(key: key);

  @override
  State<BookMarkPage> createState() => _BookMarkPageState();
}

class _BookMarkPageState extends State<BookMarkPage> {
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
              'Explore News',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )),
      ),
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: 10),
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Utils.warna,
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            'assets/logo2.jpg',
            fit: BoxFit.contain,
          ),
        ),
        title: Text(
          'Bookmark',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Container(
            width: 50,
            margin: EdgeInsets.fromLTRB(0, 7, 15, 7),
            decoration: BoxDecoration(
                color: Utils.warna.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10)),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                color: Utils.warna,
              ),
            ),
          ),
        ],
        iconTheme: IconThemeData(
          color: Utils.warna,
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Color(0xffffffff),
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 290,
                  child: TextFormField(
                    style: TextStyle(fontSize: 18.0, color: Colors.red),
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 20.0),
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.search,
                          color: Colors.black38,
                        ),
                      ),
                      fillColor: Color.fromARGB(31, 163, 161, 161),
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(
                          color: Color.fromARGB(31, 163, 161, 161),
                        ),
                      ),
                      hintText: 'Search',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(
                          color: Color.fromARGB(31, 163, 161, 161),
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        borderSide: BorderSide(
                          color: Color.fromARGB(31, 163, 161, 161),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Utils.warna.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10)),
                  child: Icon(
                    Icons.subject_rounded,
                    color: Utils.warna,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 200,
            ),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Utils.warna,
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.bookmark_border,
                color: Colors.white,
                size: 100,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'You have no bookmarked news',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Utils.warna,
                fontSize: 20,
              ),
            )
          ],
        ),
      )),
    );
  }
}
