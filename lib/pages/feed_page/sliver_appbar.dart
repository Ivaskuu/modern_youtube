import 'package:flutter/material.dart';
import '../view_video_page/elevated_card.dart';

class SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  double get margin => 16.0;
  double get size => 54.0 + (margin * 2);

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      child: ElevatedCard(
        SizedBox.expand(
          child: ListTile(
            leading: Icon(Icons.videocam, color: Colors.red),
            title: Text('YouTube', style: TextStyle(fontWeight: FontWeight.bold)),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          )
        ),
      ),
    );
  }

  @override
  double get maxExtent => size;

  @override
  double get minExtent => size;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}