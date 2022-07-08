// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:berita/DetailBeritaPage.dart';
import 'package:berita/HomePage/NotifPage.dart';
import 'package:berita/Utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
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
          title: const Text(
            'Berita',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          actions: [
            Container(
                width: 50,
                margin: EdgeInsets.fromLTRB(0, 7, 15, 7),
                decoration: BoxDecoration(
                    color: Utils.warna.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(10)),
                child: IconButton(
                  onPressed: () {
                    Get.to(() => NotifPage());
                  },
                  icon: Icon(
                    Icons.notifications,
                    color: Utils.warna,
                  ),
                )),
          ],
        ),
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
                        style: new TextStyle(fontSize: 18.0, color: Colors.red),
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
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Featured',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        color: Utils.warna,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 350,
                  height: 200,
                  margin: EdgeInsets.only(top: 15, bottom: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          blurRadius: 4,
                          offset: Offset(2, 1), // Shadow position
                        ),
                      ],
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/img3.jpg',
                        ),
                      )),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'News',
                      style: TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                        color: Utils.warna,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                SizedBox(
                  height: 35,
                  width: 400,
                  child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: 15,
                      itemBuilder: (BuildContext context, int index) {
                        if (index == 0) {
                          return Container(
                            margin: EdgeInsets.all(2),
                            padding: EdgeInsets.fromLTRB(10, 5, 10, 5),
                            decoration: BoxDecoration(
                              color: Utils.warna,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Center(
                              child: Text(
                                'Trending',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          );
                        } else {
                          return Container(
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
                      }),
                ),
                SizedBox(
                  height: 20,
                ),
                headlineNews("https://picsum.photos/200"),
                SizedBox(
                  height: 20,
                ),
                headlineNews("https://picsum.photos/200/200"),
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
        // ============================== bottom icon
        bottomNavigationBar: Container(
          margin: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              bottomIcon(Icons.home, Colors.white, Utils.warna),
              bottomIcon(
                  Icons.search, Utils.warna, Utils.warna.withOpacity(0.1)),
              bottomIcon(Icons.bookmark_border, Utils.warna,
                  Utils.warna.withOpacity(0.3)),
              bottomIcon(Icons.format_list_bulleted_outlined, Utils.warna,
                  Utils.warna.withOpacity(0.3)),
              bottomIcon(
                  Icons.person, Utils.warna, Utils.warna.withOpacity(0.3)),
            ],
          ),
        ));
  }

  Container bottomIcon(icon, warnaIcon, warnaContainer) {
    return Container(
      decoration: BoxDecoration(
        color: warnaContainer,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(
          icon,
          color: warnaIcon,
        ),
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
}
