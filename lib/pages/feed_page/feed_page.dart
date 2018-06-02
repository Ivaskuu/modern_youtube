import 'package:flutter/material.dart';
import 'sliver_appbar.dart';
import '../view_video_page/elevated_card.dart';
import '../view_video_page/view_video_page.dart';

class FeedPage extends StatefulWidget {
  @override
  _FeedPageState createState() => new _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverPersistentHeader(
              delegate: SliverAppBarDelegate(),
              floating: true,
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  VideoTile(),
                  VideoTile(),
                  VideoTile(),
                  VideoTile(),
                  VideoTile(),
                  VideoTile(),
                ]
              ),
            )
          ],
        ),
      ),
    );
  }
}

class VideoTile extends StatefulWidget {
  @override
  _VideoTileState createState() => new _VideoTileState();
}

class _VideoTileState extends State<VideoTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ViewVideoPage())),
      child: ElevatedCard(
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            AspectRatio(aspectRatio: 16 / 9),
          ],
        ),
        color: Colors.black,
      ),
    );
  }
}