// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:berita/Utils.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:flutter/material.dart';

class DetailAgencyFollowerPage extends StatefulWidget {
  const DetailAgencyFollowerPage({Key? key}) : super(key: key);

  @override
  State<DetailAgencyFollowerPage> createState() =>
      _DetailAgencyFollowerPageState();
}

class _DetailAgencyFollowerPageState extends State<DetailAgencyFollowerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Followers',
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
              height: 20,
            ),
            dataFollowerFollowing(true, "258"),
            dataFollowerFollowing(false, "93"),
            dataFollowerFollowing(false, "34"),
            dataFollowerFollowing(false, "682"),
            dataFollowerFollowing(true, "934"),
            dataFollowerFollowing(false, "951"),
            dataFollowerFollowing(true, "65"),
            dataFollowerFollowing(false, "85"),
            dataFollowerFollowing(true, "921"),
            dataFollowerFollowing(false, "64"),
            dataFollowerFollowing(false, "148"),
            dataFollowerFollowing(false, "82"),
            dataFollowerFollowing(true, "62"),
            dataFollowerFollowing(false, "78"),
            dataFollowerFollowing(false, "82"),
            dataFollowerFollowing(false, "35"),
            dataFollowerFollowing(true, "21"),
            dataFollowerFollowing(false, "958"),
            dataFollowerFollowing(false, "15"),
            dataFollowerFollowing(false, "832"),
            dataFollowerFollowing(true, "35"),
            dataFollowerFollowing(false, "52"),
          ],
        ),
      )),
    );
  }

  Widget dataFollowerFollowing(isTrue, size) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      child: Card(
        child: ListTile(
          subtitle: Text('120 Followers'),
          leading: Container(
            width: 50,
            height: 50,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Utils.warna,
              image: DecorationImage(
                  image: NetworkImage("https://placebeard.it/${size}x360"),
                  fit: BoxFit.cover),
            ),
          ),
          title: Text(
            lorem(
              paragraphs: 1,
              words: 2,
            ),
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: isTrue
              ? Container(
                  padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: Utils.warna,
                      ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    'Following',
                    style: TextStyle(
                      color: Utils.warna,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              : Container(
                  alignment: Alignment.center,
                  width: 80,
                  height: 27,
                  decoration: BoxDecoration(
                    color: Utils.warna,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Icon(
                      //   Icons.person_add,
                      //   color: Utils.warna,
                      // ),
                      Text(
                        '+ Follow',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
