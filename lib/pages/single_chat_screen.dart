import 'package:flutter/material.dart';
import 'package:whats_app/models/chat_model.dart';

class SingleChatScreen extends StatelessWidget {
  final ChatModel data;
  SingleChatScreen({@required this.data});

  @override
  Widget build(BuildContext context) {
    return new Directionality(
      textDirection: TextDirection.rtl,
      child: new Scaffold(
        appBar: new AppBar(
          automaticallyImplyLeading: false,
          title: new Row(
            children: <Widget>[
              new GestureDetector(
                onTap: () {
                  Navigator.pop(context,"سلام "+data.name);
                },
                child: new Icon(Icons.arrow_back),
              ),
              new SizedBox(
                width: 10,
              ),
              new CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: new NetworkImage(data.avatarUrl),
              ),
              new SizedBox(
                width: 10,
              ),
              new Text(
                data.name,
                style: new TextStyle(fontSize: 16),
              )
            ],
          ),
        ),
        body: new Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text("ایجاد چت"),
              new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new RaisedButton(
                    onPressed: () {},
                    child: new Text('صفحه دوم'),
                  ),
                  new RaisedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: new Text('برگشت'),
                  )
                ],
              )
            ],
          ),
        ),
        floatingActionButton: null,
      ),
    );
  }
}
