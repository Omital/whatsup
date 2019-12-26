import 'package:flutter/material.dart';
import 'package:whats_app/conponents/form.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var page = MediaQuery.of(context).size;

    return new Scaffold(
      resizeToAvoidBottomInset: false,
      body: new Container(
        decoration: new BoxDecoration(
          gradient: new LinearGradient(
            colors: <Color>[
              const Color(0xff2c5364),
              const Color(0xff0f2027),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: new Stack(
          alignment: Alignment.bottomCenter,
          children: <Widget>[
          new Opacity(
            opacity: .1,
            child: new Container(
              width: page.width,
              height: page.height,
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                      repeat: ImageRepeat.repeat,
                      image: new AssetImage("assets/images/login.png"))),
            ),
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new FormContainer(),
              new FlatButton(
                onPressed: () {},
                child: new Text(
                  'آیا نام کاربری ندارید؟ عضویت',
                  style: new TextStyle(
                      fontWeight: FontWeight.w300,
                      letterSpacing: .5,
                      color: Colors.white,
                      fontSize: 14),
                ),
              ),
            ],
          ),
          new Container(
            width: 230,
            margin: const EdgeInsets.only(bottom: 30),
            height: 60,
            alignment: Alignment.center,
            decoration: new BoxDecoration(
              color: new Color(0xff075E54),
              borderRadius: new BorderRadius.all(const Radius.circular(30))
            ),
            child: new Text(
              'ورود',
              style: new TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                  letterSpacing: .3),
            ),
          )
        ]),
      ),
    );
  }
}
