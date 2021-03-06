import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new SettingScreenState();
}

class SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return new Directionality(
        textDirection: TextDirection.rtl,
        child: new Scaffold(
          appBar: new AppBar(
            elevation: 5,
            backgroundColor: Colors.white,
            title: new Text('تنظیمات'),
            leading: new GestureDetector(
              child: new Padding(
                padding: const EdgeInsets.only(right: 25),
                child: new Icon(Icons.arrow_back, color: new Color(0xff075e54)),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: new Center(child: new Text('Search')),
        ));
  }
}
