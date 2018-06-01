import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';
import 'video_infos_card.dart';
import 'comments_card.dart';
import 'video_player.dart';

class ViewVideoPage extends StatefulWidget {
  @override
  _ViewVideoPageState createState() => new _ViewVideoPageState();
}

class _ViewVideoPageState extends State<ViewVideoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      body: Container(
        margin: EdgeInsets.only(top: 16.0),
        child: Stack(
          children: <Widget>[
            ListView(
              padding: EdgeInsets.all(0.0),
              children: <Widget>[
                VideoInfosCard(),
                CommentsCard()
              ],
            ),
            VideoPlayer()
          ],
        ),
        
        
        
        /* CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.transparent,
              automaticallyImplyLeading: false,
              titleSpacing: 0.0,
              elevation: 0.0,
              floating: true,
              snap: true,
              primary: true,
              title: Container(
                margin: EdgeInsets.only(left: 16.0, right: 16.0, bottom: 4.0),
                child: Material(
                  color: Colors.white,
                  elevation: 6.0,
                  shadowColor: Colors.black26,
                  borderRadius: BorderRadius.circular(10.0),
                  child: SizedBox.expand(
                    child: ListTile(
                      leading: Icon(Icons.videocam, color: Colors.red),
                      title: Text('YouTube', style: TextStyle(fontWeight: FontWeight.bold)),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Stack(
                children: <Widget>[
                  VideoCard(),
                  ElevatedCard(SizedBox.fromSize(size: Size.fromHeight(180.0)), color: videoBgColor),
                ]
              )
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  CommentsCard(),
                ]
              ),
            )
          ],
        ), */
      )
    );
  }
}