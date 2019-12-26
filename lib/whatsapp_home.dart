import 'package:flutter/material.dart';
import 'package:whats_app/pages/create_chat_screen.dart';
import 'package:whats_app/pages/call_screen.dart';
import 'package:whats_app/pages/camera_screen.dart';
import 'package:whats_app/pages/chat_screen.dart';
import 'package:whats_app/pages/new_group.dart';
import 'package:whats_app/pages/setting_screen.dart';
import 'package:whats_app/pages/status_screen.dart';
import 'package:whats_app/whatapp_search.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new WhatsAppHomeState();
}

class WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(initialIndex: 1, length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              new SliverAppBar(
                elevation: 5,
                bottom: new TabBar(
                  indicatorColor: Colors.orange,
                  controller: _tabController,
                  tabs: <Widget>[
                    new Tab(icon: new Icon(Icons.camera_alt)),
                    new Tab(text: 'چت ها'),
                    new Tab(text: 'وضعیت'),
                    new Tab(text: 'تماس ها'),
                  ],
                ),
                title: new Text('واتساپ'),
                pinned: true,
                floating: true,
                actions: <Widget>[
                  new GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new WhatsAppSearch()));
                      },
                      child: Icon(Icons.search)),
                  new Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                  ),
                  new PopupMenuButton<String>(
                    onSelected: (String choise) {
                      if (choise == "settings") {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (contex) => new SettingScreen()));
                      } else if (choise == "new_group") {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => new NewGroup()));
                      }
                    },
                    itemBuilder: (BuildContext context) {
                      return [
                        new PopupMenuItem(
                          value: 'new_group',
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[new Text('گروه جدید')],
                          ),
                        ),
                        new PopupMenuItem(
                          value: 'settings',
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[new Text('تنظیمات')],
                          ),
                        )
                      ];
                    },
                  )
                ],
              )
            ];
          },
          body: new TabBarView(
            controller: _tabController,
            children: <Widget>[
              new CameraScreen(),
              new ChatScreen(),
              new StatusScreen(),
              new CallScreen()
            ],
          )),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              new MaterialPageRoute(builder: (context) => CreateChatScreen()));
        },
        backgroundColor: Theme.of(context).accentColor,
        child: new Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
    );
  }
}
