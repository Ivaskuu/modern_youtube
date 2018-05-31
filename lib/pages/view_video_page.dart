import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/diagnostics.dart';

class ViewVideoPage extends StatefulWidget {
  @override
  _ViewVideoPageState createState() => new _ViewVideoPageState();
}

class _ViewVideoPageState extends State<ViewVideoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0F0F0),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: Container(
          margin: EdgeInsets.only(top: 32.0, left: 16.0, right: 16.0, bottom: 16.0),
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
      body: ListView()
    );
  }
}