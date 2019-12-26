import 'package:flutter/material.dart';
import 'package:whats_app/pages/login_screen.dart';
import 'package:whats_app/pages/splash_screen.dart';
import 'package:whats_app/whatsapp_home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WhatsApp',
        initialRoute: "/splash_screen",
        theme: ThemeData(
            fontFamily: 'Vazir',
            primarySwatch: Colors.blue,
            accentColor: new Color(0xff25d366),
            primaryColor: new Color(0xff075e54)),
        routes: {
          "/": (context) => new Directionality(
              textDirection: TextDirection.rtl, child: WhatsAppHome()),
          "/splash_screen": (context) => new Directionality(
                textDirection: TextDirection.rtl,
                child: new SplashScreen(),
              ),
          "/login": (context) => new Directionality(
                textDirection: TextDirection.rtl,
                child: new LoginScreen(),
              )
        });
  }
}
