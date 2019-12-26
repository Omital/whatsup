import 'package:flutter/material.dart';

import 'input_filed.dart';

class FormContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: new Column(
        children: <Widget>[
          new Form(
            child: new Column(
              children: <Widget>[
                new InputFiled('نام کاربری', false, Icons.person),
                new InputFiled('کلمه عبور', true, Icons.lock_outline)
              ],
            ),
          )
        ],
      ),
    );
  }
}
