import 'package:flutter/material.dart';

class InputFiled extends StatelessWidget {
  final String hint;
  final bool obscure;
  final IconData icon;

  InputFiled(this.hint, this.obscure, this.icon);

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.only(bottom: 20),
        decoration: new BoxDecoration(
            border: new Border(
                bottom: new BorderSide(width: .5, color: Colors.white24))),
        child: new TextFormField(
          obscureText: this.obscure,
          style: const TextStyle(color: Colors.white),
          decoration: new InputDecoration(
            icon: new Icon(
              this.icon,
              color: Colors.white,
            ),
            border: InputBorder.none,
            hintText: this.hint,
            hintStyle: const TextStyle(color: Colors.grey, fontSize: 15),
            contentPadding: const EdgeInsets.only(top: 15,right: 0,bottom: 20,left: 5)
          ),
        ));
  }
}
