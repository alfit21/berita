// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:berita/Utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';
import 'package:get/get.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          'Search',
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
              height: 15,
            ),
            tabDiBody(),
          ],
        ),
      )),
    );
  }
}

DefaultTabController tabDiBody() {
  return DefaultTabController(
    length: 3, // length of tabs
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
              Tab(text: 'News'),
              Tab(text: 'People'),
              Tab(text: 'Hastag'),
            ],
          ),
        ),
        Container(
          height: 490, //height of TabBarView
          decoration: BoxDecoration(
              border: Border(top: BorderSide(color: Colors.grey, width: 0.5))),
          child: TabBarView(
            children: <Widget>[
              tabNews(),
              tabPeople(),
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Search Results',
                          style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '81325 Founds',
                          style: TextStyle(
                            color: Utils.warna,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    for (var i = 0; i < 15; i++) dataHastag(),
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

Widget dataHastag() {
  return Container(
    margin: EdgeInsets.only(bottom: 10),
    child: Card(
      child: ListTile(
        title: Text(
          '#' + lorem(paragraphs: 1, words: 1),
          style: TextStyle(
            fontSize: 14.0,
            color: Colors.black54,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: RichText(
          text: TextSpan(
            // Note: Styles for TextSpans must be explicitly defined.
            // Child text spans will inherit styles from parent
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: Utils.warna,
            ),
            children: <TextSpan>[
              TextSpan(text: '456.54K'),
              TextSpan(
                  text: ' News',
                  style: TextStyle(
                    color: Colors.black54,
                  )),
            ],
          ),
        ),
      ),
    ),
  );
}

SingleChildScrollView tabPeople() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Search Results',
              style: TextStyle(
                color: Colors.black54,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '1454 Founds',
              style: TextStyle(
                color: Utils.warna,
                fontWeight: FontWeight.bold,
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
  );
}

Column tabNews() {
  return Column(
    children: [
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
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Search Results',
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '5445 Founds',
            style: TextStyle(
              color: Utils.warna,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      SizedBox(
        height: 393,
        child: SingleChildScrollView(
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
      ),
    ],
  );
}

Widget headlineNews(gambar) {
  return InkWell(
    onTap: () {
      // Get.to(() => DetailBeritaPage());
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
