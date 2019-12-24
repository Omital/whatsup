import 'package:flutter/material.dart';

class CreateChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Directionality(
      child: new Scaffold(
      appBar: new AppBar(
        title: new Text("ایجاد چت"),
      ),
      body: new Center(
        child: new Text(
          'ایحاد چت',
          style: new TextStyle(fontSize: 20),
        ),
      ),
      floatingActionButton: null,
    ),
    textDirection: TextDirection.rtl,
    );
  }
}
