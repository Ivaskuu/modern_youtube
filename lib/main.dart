import 'package:flutter/material.dart';
import 'pages/view_video_page/view_video_page.dart';
import 'pages/feed_page/feed_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modern Youtube',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: FeedPage(),
    );
  }
}