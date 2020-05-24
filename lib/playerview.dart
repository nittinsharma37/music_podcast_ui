import 'package:app31_music_podcast_ui/homepage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PlayerScreen extends StatefulWidget {
  @override
  _PlayerScreenState createState() => _PlayerScreenState();
}

class _PlayerScreenState extends State<PlayerScreen> {
  double val = 0.4;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 18.0,
                      ),
                      tooltip: "Go Back",
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => HomePage()));
                      },
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        size: 18.0,
                      ),
                      tooltip: "More actions",
                      onPressed: () {},
                    ),
                  )
                ],
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5.0),
                child: Material(
                  elevation: 5.0,
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.height * 0.4,
                    child: Image(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          "https://cover.loadbig.info/thumb/oromt/cover.jpg"),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      "Bheegi Bheegi",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Neha Kakkar, Tony Kakkar",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.02,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                  child: Slider(
                    activeColor: Colors.black,
                    value: val,
                    onChanged: (sliderVal) {
                      setState(() {
                        val = sliderVal;
                      });
                    },
                    max: 1.0,
                    min: 0.0,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "00.00",
                      style: TextStyle(fontSize: 12.0),
                    ),
                    Text(
                      "00.00",
                      style: TextStyle(fontSize: 12.0),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.repeat,
                          size: 18.0,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.skip_previous,
                            size: 30.0,
                            color: Colors.grey,
                          ),
                        ),
                        MaterialButton(
                          padding: EdgeInsets.all(20.0),
                          color: Colors.black,
                          onPressed: (){},
                          shape: CircleBorder(),
                          child: Icon(
                            Icons.pause,
                            color: Colors.grey,
                            size: 30.0,
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Icon(
                            Icons.skip_next,
                            size: 30.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.shuffle,
                          size: 18.0,
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
