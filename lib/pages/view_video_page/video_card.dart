import 'package:flutter/material.dart';
import 'elevated_card.dart';

class VideoCard extends StatefulWidget {
  @override
  _VideoCardState createState() => new _VideoCardState();
}

class _VideoCardState extends State<VideoCard> {
  final Color videoBgColor = Color(0xFF010E23);
  final String description = 'In laboris ex commodo mollit cillum veniam. Qui exercitation consectetur quis sit aliqua nulla consequat enim anim. Reprehenderit dolore labore ad reprehenderit consectetur. Reprehenderit adipisicing consectetur enim veniam nulla proident elit excepteur qui elit qui non proident anim. Eu in est deserunt pariatur occaecat reprehenderit do sit cillum. Do ex ut culpa do adipisicing cillum quis nulla consequat tempor consequat. Duis eu nostrud cillum Lorem minim eu. Do culpa ut qui elit mollit qui elit nisi commodo proident duis. Officia ad occaecat incididunt occaecat duis. Eiusmod cillum dolore tempor aliquip fugiat adipisicing ipsum. Occaecat elit est anim deserunt Lorem minim elit fugiat aliquip pariatur aute voluptate cupidatat. Sit exercitation do ea excepteur dolore. Elit nostrud id nulla eiusmod voluptate reprehenderit. Enim ad cupidatat eu sit mollit ad aliquip laboris quis magna. Consequat deserunt in nulla sit magna ex est ea ex. Dolore est consectetur excepteur enim reprehenderit mollit esse minim culpa aliquip. Dolor culpa laboris magna nisi aliquip consectetur adipisicing qui. Occaecat in mollit minim cupidatat commodo duis culpa nostrud aute cupidatat aliquip laborum minim sit.';
  bool expandDescription = false;

  @override
  Widget build(BuildContext context) {
    return ElevatedCard(
      Column(
        children: <Widget>[
          ElevatedCard(SizedBox.fromSize(size: Size.fromHeight(180.0)), color: videoBgColor, margin: false),
          Container(
            margin: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Cillum consectetur ea tempor ut aliquip dolor excepteur.', style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 6.0),
                Text('390.874 views', style: Theme.of(context).textTheme.caption),
                SizedBox(height: 16.0),
                GestureDetector(
                  onTap: () => setState(() => expandDescription = !expandDescription),
                  child: Text(description, maxLines: expandDescription ? null : 2, overflow: TextOverflow.fade, style: Theme.of(context).textTheme.caption)
                ),
              ],
            ),
          ),
          Divider(),
          Container(
            margin: EdgeInsets.symmetric(vertical: 0.0),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.black38,
              ),
              title: Text('Ivascu Adrian', style: TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text('3M subscribers', style: Theme.of(context).textTheme.caption),
              trailing: Material(
                color: Color(0xFFFF0000),
                borderRadius: BorderRadius.circular(32.0),
                elevation: 6.0,
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
                  child: Text('SUBSCRIBE', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}