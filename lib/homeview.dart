import 'package:flutter/material.dart';

import 'customappbar.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Music",
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Trending",
                  style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic),
                ),
                InkWell(
                    onTap: () {
                      print("trending pressed");
                    },
                    child: Text(
                      "more.",
                      style: TextStyle(
                          fontSize: 20.0, fontStyle: FontStyle.italic),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, counter) {
                  return InkWell(
                    onTap: () {
                      print("Card Pressed $counter");
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Material(
                        elevation: 10.0,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                height:
                                MediaQuery.of(context).size.height * 0.3,
                                width: MediaQuery.of(context).size.height * 0.3,
                                child: counter % 2 == 0
                                    ? Image(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://lq.djring.com/covers/721155/Tod%20Da%20E%20Dil%20(Full%20Version).jpg"),
                                )
                                    : Image(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(
                                      "https://lq.djring.com/covers/721049/Jail.jpg"),
                                ),
                              ),
                              Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Tod Da-e-Dil Ammy Virk",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding:
            const EdgeInsets.symmetric(horizontal: 15.0, vertical: 3.0),
            child: Text(
              "Latest",
              style: TextStyle(fontSize: 20.0, fontStyle: FontStyle.italic),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ListTile(
              leading: Image(
                image: NetworkImage(
                    "http://lq.djring.com/covers/721030/Pittal.jpg"),
                fit: BoxFit.cover,
              ),
              title: Text(
                "Pittal - Snitches Get Stiches",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Sidhu Moose Wala",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ListTile(
              leading: Image(
                image: NetworkImage(
                    "http://lq.djring.com/covers/719275/Chal%20Bombay.jpg"),
                fit: BoxFit.cover,
              ),
              title: Text(
                "Chal Bombay -  Kohinoor",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Divine",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ListTile(
              leading: Image(
                image: NetworkImage(
                    "https://lq.djring.com/covers/721183/Knock.jpg"),
                fit: BoxFit.cover,
              ),
              title: Text(
                "Knock",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Himmat Sandhu , Garry Sandhu",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ListTile(
              leading: Image(
                image: NetworkImage(
                    "https://lq.djring.com/covers/721192/Aah%20Chak%20Hummer%202.jpg"),
                fit: BoxFit.cover,
              ),
              title: Text(
                "Aah Chak Hummer 2",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                "Lucky Singh Durgapuria , Afsana Khan",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
