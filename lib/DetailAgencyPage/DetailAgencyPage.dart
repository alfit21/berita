// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, avoid_unnecessary_containers

import 'package:berita/DetailAgencyPage/DetailAgencyFollowerPage.dart';
import 'package:berita/DetailAgencyPage/DetailAgencyFollowingPage.dart';
import 'package:berita/DetailBeritaPage.dart';
import 'package:berita/Utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:get/get.dart';
import 'package:share_plus/share_plus.dart';

class DetailAgencyPage extends StatefulWidget {
  const DetailAgencyPage({Key? key}) : super(key: key);

  @override
  State<DetailAgencyPage> createState() => _DetailAgencyPageState();
}

class _DetailAgencyPageState extends State<DetailAgencyPage> {
  var isFollow = false;
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
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.newspaper_rounded,
                  size: 80,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  'BBC News',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                lorem(paragraphs: 1, words: 20),
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  dataFolower('465.5K', 'News'),
                  Container(
                    height: 50,
                    child: VerticalDivider(color: Colors.black),
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(() => DetailAgencyFollowerPage());
                      },
                      child: dataFolower('6.5M', 'Followers')),
                  Container(
                    height: 50,
                    child: VerticalDivider(color: Colors.black),
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(() => DetailAgencyFollowingPage());
                      },
                      child: dataFolower('135', 'Following')),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  buttonFollower(
                      Utils.warna, Icons.person_add, 'Follow', Colors.white),
                  buttonFollower(
                      Colors.white, Icons.cancel, 'Website', Utils.warna),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              tabDiBody(),
            ],
          ),
        ),
      ),
    );
  }

  DefaultTabController tabDiBody() {
    return DefaultTabController(
      length: 2, // length of tabs
      initialIndex: 0,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: TabBar(
              indicatorColor: Utils.warna,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(text: 'Top News'),
                Tab(text: 'Recent'),
              ],
            ),
          ),
          Container(
            height: 400, //height of TabBarView
            decoration: BoxDecoration(
                border:
                    Border(top: BorderSide(color: Colors.grey, width: 0.5))),
            child: TabBarView(
              children: <Widget>[
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
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
                SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      headlineNews("https://picsum.photos/300/200"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget headlineNews(gambar) {
    return InkWell(
      onTap: () {
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

  InkWell buttonFollower(warnaContainer, icon, text, warnaText) {
    return InkWell(
      onTap: () {
        setState(() {
          isFollow = !isFollow;
        });
      },
      child: Container(
        padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
        decoration: BoxDecoration(
          border: Border.all(color: Utils.warna),
          borderRadius: BorderRadius.circular(20),
          color: warnaContainer,
        ),
        child: isFollow
            ? Text(
                isFollow ? text + 'ing'.toString() : text,
                style: TextStyle(
                  color: warnaText,
                  fontWeight: FontWeight.bold,
                ),
              )
            : Row(
                children: <Widget>[
                  Icon(icon, color: warnaText),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    text,
                    style: TextStyle(
                      color: warnaText,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
      ),
    );
  }

  Column dataFolower(atas, bawah) {
    return Column(
      children: [
        Text(
          atas,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black87,
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          bawah,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 12,
            color: Colors.black54,
          ),
        ),
      ],
    );
  }
}
