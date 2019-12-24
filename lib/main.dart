import 'package:flutter/material.dart';
import 'package:whats_app/whatsapp_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'WhatsApp',
        theme: ThemeData(
          fontFamily: 'Vazir',
          primarySwatch: Colors.blue,
          accentColor:  new Color(0xff25d366),
          primaryColor: new Color(0xff075e54)
        ),
        home: new Directionality(
          textDirection: TextDirection.rtl,
          child: WhatsAppHome(),
        ));
  }
}
