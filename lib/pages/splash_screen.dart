import 'dart:async';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  startTime() {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, () {
      Navigator.of(context).pushReplacementNamed('/login');
    });
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: new Color(0xff075E54),
        body: new Stack(
          fit: StackFit.expand,
          children: <Widget>[
            new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new Container(
                  width: 125,
                  height: 125,
                  decoration: new BoxDecoration(
                      image: new DecorationImage(
                    image: new AssetImage('assets/images/icon.png'),
                  )),
                ),
                new Text(
                  'واتسآپ',
                  style: new TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(bottom: 30),
              child: new Align(
                alignment: Alignment.bottomCenter,
                child: CircularProgressIndicator(),
              ),
            )
          ],
        ));
    // new Center(
    //   child: new Text('صفحه شروع'),
    // ));
  }
}
