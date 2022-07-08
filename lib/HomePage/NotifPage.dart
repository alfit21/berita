// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:berita/Utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lorem/flutter_lorem.dart';

class NotifPage extends StatefulWidget {
  const NotifPage({Key? key}) : super(key: key);

  @override
  State<NotifPage> createState() => _NotifPageState();
}

class _NotifPageState extends State<NotifPage> {
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
                  onPressed: () {},
                  icon: Icon(
                    Icons.more_vert,
                    color: Utils.warna,
                  ),
                )),
          ],
          iconTheme: IconThemeData(
            color: Utils.warna,
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Notification',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        backgroundColor: Color(0xffffffff),
        body: SingleChildScrollView(
            child: Container(
          margin: EdgeInsets.all(
            20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Today, December 21 2020'),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 500,
                height: 80,
                child: Card(
                  child: ListTile(
                    subtitle: Text('5 minutes age'),
                    leading: Container(
                      width: 50,
                      height: 50,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Utils.warna,
                        image: DecorationImage(
                            image:
                                NetworkImage("https://placebeard.it/640x360"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    title: Text(lorem(paragraphs: 1, words: 4)),
                  ),
                ),
              ),
              SizedBox(
                width: 500,
                height: 80,
                child: Card(
                  child: ListTile(
                    subtitle: Text(lorem(
                      paragraphs: 1,
                      words: 4,
                    )),
                    leading: Container(
                      width: 50,
                      height: 50,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Utils.warna,
                        image: DecorationImage(
                            image:
                                NetworkImage("https://placebeard.it/640x310"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    title: Text(lorem(paragraphs: 1, words: 4)),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text('Today, February 21 2022'),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 500,
                height: 80,
                child: Card(
                  child: ListTile(
                    subtitle: Text('50 minutes age'),
                    leading: Container(
                      width: 50,
                      height: 50,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Utils.warna,
                        image: DecorationImage(
                            image:
                                NetworkImage("https://placebeard.it/680x360"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    title: Text(lorem(paragraphs: 1, words: 4)),
                  ),
                ),
              ),
              SizedBox(
                width: 500,
                height: 80,
                child: Card(
                  child: ListTile(
                    subtitle: Text(lorem(
                      paragraphs: 1,
                      words: 4,
                    )),
                    leading: Container(
                      width: 50,
                      height: 50,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Utils.warna,
                        image: DecorationImage(
                            image:
                                NetworkImage("https://placebeard.it/610x360"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    title: Text(lorem(paragraphs: 1, words: 4)),
                  ),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text('Today, January 11 2021'),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 500,
                height: 80,
                child: Card(
                  child: ListTile(
                    subtitle: Text('09 minutes age'),
                    leading: Container(
                      width: 50,
                      height: 50,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Utils.warna,
                        image: DecorationImage(
                            image:
                                NetworkImage("https://placebeard.it/649x360"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    title: Text(lorem(paragraphs: 1, words: 4)),
                  ),
                ),
              ),
              SizedBox(
                width: 500,
                height: 80,
                child: Card(
                  child: ListTile(
                    subtitle: Text(lorem(
                      paragraphs: 1,
                      words: 4,
                    )),
                    leading: Container(
                      width: 50,
                      height: 50,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Utils.warna,
                        image: DecorationImage(
                            image:
                                NetworkImage("https://placebeard.it/641x360"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    title: Text(lorem(paragraphs: 1, words: 4)),
                  ),
                ),
              ),
            ],
          ),
        )),
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
