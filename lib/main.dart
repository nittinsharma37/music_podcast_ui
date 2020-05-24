import 'package:flutter/material.dart';
import 'package:app31_music_podcast_ui/homepage.dart';

void main() {
  runApp(MusicApp());
}

class MusicApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
        brightness: Brightness.light,
      ),
      title: "Music Podcast ",
      home: HomePage(),
    );
  }
}
