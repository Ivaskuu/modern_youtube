import 'package:flutter/material.dart';
import 'elevated_card.dart';

class VideoPlayer extends StatefulWidget {
  @override
  _VideoPlayerState createState() => new _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  final Color videoBgColor = Color(0xFF010E23);
  
  @override
  Widget build(BuildContext context) {
    return ElevatedCard(
      AspectRatio(
        aspectRatio: 16 / 9,
        child: Stack(
          children: <Widget>[
            Center(
              child: IconButton(
                onPressed: () {},
                iconSize: 32.0,
                color: Colors.white,
                icon: Icon(Icons.pause)
              )
            ),
            Align( // TODO: replace with a custom slider
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.all(16.0),
                child: Material(
                  borderRadius: BorderRadius.circular(4.0),
                  child: Theme(
                    data: ThemeData(accentColor: Color(0xFFFF0000)),
                    child: LinearProgressIndicator(
                      backgroundColor: Colors.white,
                      value: 0.7,
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      ),
      color: videoBgColor
    );
  }
}