// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:berita/DetailAgencyPage/DetailAgencyPage.dart';
import 'package:berita/Utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

class DetailBeritaPage extends StatefulWidget {
  const DetailBeritaPage({Key? key}) : super(key: key);

  @override
  State<DetailBeritaPage> createState() => _DetailBeritaPageState();
}

class _DetailBeritaPageState extends State<DetailBeritaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            width: 50,
            margin: EdgeInsets.fromLTRB(0, 7, 15, 7),
            decoration: BoxDecoration(
                color: Utils.warna.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10)),
            child: IconButton(
              onPressed: () {
                Share.share("Get The Last News", subject: 'Look what I made!');
              },
              icon: Icon(
                Icons.share,
                color: Utils.warna,
              ),
            ),
          ),
          Container(
            width: 50,
            margin: EdgeInsets.fromLTRB(0, 7, 15, 7),
            decoration: BoxDecoration(
                color: Utils.warna.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10)),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.bookmark_border,
                color: Utils.warna,
              ),
            ),
          ),
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
          margin: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://picsum.photos/400/200",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                lorem(paragraphs: 1, words: 10),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.black87.withOpacity(0.8),
                ),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(2),
                    padding: EdgeInsets.fromLTRB(10, 2, 10, 2),
                    decoration: BoxDecoration(
                      border: Border.all(color: Utils.warna),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Public',
                        style: TextStyle(
                          color: Utils.warna,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.remove_red_eye_outlined,
                        color: Utils.warna,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text('952.5K')
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.thumb_up,
                        color: Utils.warna,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text('381.5K')
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.comment,
                        color: Utils.warna,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text('654.5K')
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                onTap: () {
                  Get.to(() => DetailAgencyPage());
                },
                child: ListTile(
                  subtitle: Text('5 minutes age'),
                  leading: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Utils.warna,
                    ),
                    child: Icon(
                      Icons.newspaper,
                      color: Colors.white,
                    ),
                  ),
                  title: Text(
                    "BBC",
                    style: TextStyle(
                      color: Utils.warna,
                    ),
                  ),
                  trailing: Container(
                    padding: EdgeInsets.fromLTRB(5, 5, 5, 5),
                    decoration: BoxDecoration(
                        color: Utils.warna,
                        borderRadius: BorderRadius.circular(20)),
                    child: Text(
                      '+ Follow',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(lorem(paragraphs: 1, words: 80)),
              SizedBox(
                height: 25,
              ),
              Text(lorem(paragraphs: 1, words: 50)),
              SizedBox(
                height: 25,
              ),
              Text(lorem(paragraphs: 1, words: 25)),
              SizedBox(
                height: 25,
              ),
              Container(
                height: 200,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      "https://picsum.photos/400/201",
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(lorem(paragraphs: 1, words: 89)),
              SizedBox(
                height: 25,
              ),
              Text(lorem(paragraphs: 1, words: 35)),
              SizedBox(
                height: 25,
              ),
              Wrap(
                alignment: WrapAlignment.start,
                children: <Widget>[
                  iconBulet(),
                  iconBulet(),
                  iconBulet(),
                  iconBulet(),
                  iconBulet(),
                  iconBulet(),
                  iconBulet(),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Is this news helpful?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.thumb_up,
                        color: Utils.warna,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text('625.5K'),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.thumb_down,
                        color: Utils.warna,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text('95.5K')
                    ],
                  ),
                ],
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Text(
                                'Comments',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                '175.5K',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Utils.warna,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.swap_vert,
                            color: Utils.warna,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        height: 20,
                        color: Colors.black54,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Get.focusScope?.unfocus();
                          Get.bottomSheet(Container(
                            height: 600,
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20)),
                              color: Colors.white,
                            ),
                            child: SingleChildScrollView(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: <Widget>[
                                          Text(
                                            'Comments',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            '170.923',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Utils.warna,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.subject_rounded,
                                            color: Utils.warna,
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Icon(
                                            Icons.clear_rounded,
                                            color: Utils.warna,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Divider(
                                    height: 20,
                                    color: Colors.black54,
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Container(
                                        width: 50,
                                        height: 50,
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Utils.warna,
                                          image: DecorationImage(
                                              image: NetworkImage(
                                                  "https://placebeard.it/610x360"),
                                              fit: BoxFit.cover),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 230,
                                        child: TextFormField(
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.red),
                                          keyboardType:
                                              TextInputType.emailAddress,
                                          decoration: InputDecoration(
                                            contentPadding:
                                                const EdgeInsets.symmetric(
                                                    vertical: 8.0,
                                                    horizontal: 20.0),
                                            fillColor: Color.fromARGB(
                                                31, 163, 161, 161),
                                            filled: true,
                                            focusedBorder: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(25.0),
                                              borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    31, 163, 161, 161),
                                              ),
                                            ),
                                            hintText: 'Add a comment',
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.0)),
                                              borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    31, 163, 161, 161),
                                              ),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20.0)),
                                              borderSide: BorderSide(
                                                color: Color.fromARGB(
                                                    31, 163, 161, 161),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  commentOrang(Colors.amber, '458'),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  commentOrang(Colors.pink, "546"),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  commentOrang(Colors.green, "971"),
                                ],
                              ),
                            ),
                          ));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              width: 50,
                              height: 50,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Utils.warna,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://placebeard.it/640x360"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            SizedBox(
                              width: 230,
                              child: TextFormField(
                                style: TextStyle(
                                    fontSize: 14.0, color: Colors.red),
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 8.0, horizontal: 20.0),
                                  fillColor: Color.fromARGB(31, 163, 161, 161),
                                  filled: true,
                                  focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(25.0),
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(31, 163, 161, 161),
                                    ),
                                  ),
                                  hintText: 'Add a comment',
                                  border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(31, 163, 161, 161),
                                    ),
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(20.0)),
                                    borderSide: BorderSide(
                                      color: Color.fromARGB(31, 163, 161, 161),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Related',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'See all',
                    style: TextStyle(
                      color: Utils.warna,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              headlineNews("https://picsum.photos/300/200"),
              SizedBox(
                height: 20,
              ),
              headlineNews("https://picsum.photos/300/300"),
              SizedBox(
                height: 20,
              ),
              headlineNews("https://picsum.photos/100/100"),
            ],
          ),
        ),
      ),
    );
  }

  Card commentOrang(warna, size) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            ListTile(
              trailing: Icon(
                Icons.more_vert,
                color: Utils.warna,
              ),
              subtitle: Text('5 minutes age'),
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
              title: Text(lorem(paragraphs: 1, words: 4)),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              height: 20,
              color: Colors.black54,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              lorem(paragraphs: 1, words: 20),
              style: TextStyle(
                color: Colors.black54,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                Row(
                  children: [
                    Icon(
                      Icons.thumb_up,
                      color: Utils.warna,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text('562.5K')
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.thumb_down,
                      color: Utils.warna,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text('695.5K')
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.comment,
                      color: Utils.warna,
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text('54.5K')
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Divider(
              indent: 20,
              endIndent: 20,
              height: 20,
              color: Colors.black54,
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  '87 Replay',
                  style: TextStyle(color: Utils.warna),
                ),
                Icon(
                  Icons.subject_rounded,
                  color: Utils.warna,
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget headlineNews(gambar) {
    return InkWell(
      onTap: () {
        Get.back();
        Get.to(() => DetailBeritaPage());
      },
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
              spreadRadius: 0,
              offset: Offset(2, 2),
            )
          ],
        ),
        child: Row(
          children: <Widget>[
            Container(
              height: 151,
              width: Get.width * 0.4,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                    gambar,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 8, 8, 0),
                    child: Text(
                      lorem(paragraphs: 1, words: 90),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.newspaper_rounded,
                          color: Utils.warna,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text(
                          lorem(paragraphs: 1, words: 1),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Container(
                            height: 30,
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            decoration: BoxDecoration(
                              border: Border.all(color: Utils.warna),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                lorem(paragraphs: 1, words: 1),
                                style: TextStyle(
                                  color: Utils.warna,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: [
                            Icon(
                              Icons.thumb_up,
                              color: Utils.warna,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text('381.5K')
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.comment,
                              color: Utils.warna,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                            Text('853.5K')
                          ],
                        ),
                        Icon(
                          Icons.bookmark_border,
                          color: Utils.warna,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container iconBulet() {
    return Container(
      width: 90,
      margin: EdgeInsets.all(2),
      padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
      decoration: BoxDecoration(
        border: Border.all(color: Utils.warna),
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          lorem(paragraphs: 1, words: 1),
          style: TextStyle(
            color: Utils.warna,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
