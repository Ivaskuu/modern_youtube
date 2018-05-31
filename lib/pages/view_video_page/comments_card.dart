import 'package:flutter/material.dart';
import 'elevated_card.dart';

class CommentsCard extends StatefulWidget {
  @override
  _CommentsCardState createState() => new _CommentsCardState();
}

class _CommentsCardState extends State<CommentsCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 16.0, top: 16.0),
          child: Text('COMMENTS', style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        ElevatedCard(
          Column(
            children: <Widget>[
              CommentWidget(),
              CommentWidget(),
              CommentWidget(),
              CommentWidget(),
              CommentWidget(),
              CommentWidget(),
            ],
          )
        ),
      ],
    );
  }
}

class CommentWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.black26,
          ),
          SizedBox(width: 16.0),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Ivascu Adrian', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black)),
                SizedBox(height: 4.0),
                Text('Magna officia aliquip consequat sunt ea aliqua ipsum dolore pariatur deserunt exercitation dolore id. Esse anim magna sit proident sint cupidatat adipisicing Lorem.'),
              ],
            ),
          )
        ],
      )
    );
  }
}