import 'package:app31_music_podcast_ui/playerview.dart';
import 'package:app31_music_podcast_ui/searchView.dart';
import 'package:flutter/material.dart';
import 'package:app31_music_podcast_ui/homeview.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List  _bodyView = [
    HomeView(),
    PlayerScreen(),
    SearchScreen(),
  ];

  void onTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bodyView[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10.0,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey.withOpacity(0.4),
        selectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: onTapped,
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text(''),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.headset),
            title: new Text(''),
          ),
          BottomNavigationBarItem(

              icon: Icon(Icons.search),
              title: Text("")
          ),
        ],
      ),
    );
  }
}

