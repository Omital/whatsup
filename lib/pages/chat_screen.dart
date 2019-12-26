import 'package:flutter/material.dart';
import 'package:whats_app/models/chat_model.dart';
import 'package:whats_app/pages/single_chat_screen.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, index) {
        return new Column(
          children: <Widget>[
            new Divider(
              height: 5,
            ),
            new GestureDetector(
              onTap: () {
                _navigateAndDisplaySomeMessage(context, dummyData[index]);
              },
              child: new ListTile(
                leading: new CircleAvatar(
                    backgroundImage:
                        new NetworkImage(dummyData[index].avatarUrl),
                    backgroundColor: Colors.grey),
                title: new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Text(dummyData[index].name,
                        style: new TextStyle(fontWeight: FontWeight.bold)),
                    new Text(dummyData[index].time,
                        style: new TextStyle(color: Colors.grey, fontSize: 14))
                  ],
                ),
                subtitle: new Container(
                    padding: EdgeInsets.only(top: 5),
                    child: new Text(dummyData[index].message,
                        style:
                            new TextStyle(color: Colors.grey, fontSize: 15))),
              ),
            )
          ],
        );
      },
    );
  }

  _navigateAndDisplaySomeMessage(BuildContext context, ChatModel data) async {
    final res = await Navigator.push(
        context,
        new MaterialPageRoute(
            builder: (context) => new SingleChatScreen(
                  data: data,
                )));

    Scaffold.of(context).showSnackBar(new SnackBar(
      content: new Text(
        res,
        style: new TextStyle(color: Colors.red, fontFamily: 'Vazir'),
      ),
    ));
  }
}
