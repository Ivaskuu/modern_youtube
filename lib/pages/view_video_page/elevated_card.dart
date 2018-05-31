import 'package:flutter/material.dart';

class ElevatedCard extends StatelessWidget {
  final Widget child;
  final Color color;
  final bool margin;
  ElevatedCard(this.child, {this.color, this.margin: true});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ? EdgeInsets.all(16.0) : EdgeInsets.all(0.0),
      child: Material(
        color: color ?? Colors.white,
        elevation: 6.0,
        shadowColor: Colors.black45,
        borderRadius: BorderRadius.circular(10.0),
        child: child
      )
    );
  }
}