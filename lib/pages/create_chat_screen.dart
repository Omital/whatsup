import 'package:flutter/material.dart';
import 'package:whats_app/pages/camera_screen.dart';

class CreateChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Directionality(
      textDirection: TextDirection.rtl,
      child: new Scaffold(
        appBar: new AppBar(
          title: new Text("ایجاد چت"),
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
                    onPressed: () {
                      Navigator.push(context, new MaterialPageRoute(builder: (contex)=>new CameraScreen()));
                    },
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
