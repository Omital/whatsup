import 'package:flutter/material.dart';
import 'package:whats_app/pages/create_chat_screen.dart';
import 'package:whats_app/pages/call_screen.dart';
import 'package:whats_app/pages/camera_screen.dart';
import 'package:whats_app/pages/chat_screen.dart';
import 'package:whats_app/pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new WhatsAppHomeState();
}

class WhatsAppHomeState extends State<WhatsAppHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  String _currentAppBar = 'searchAppBar';
  Map<String, SliverAppBar> appBarList;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(initialIndex: 1, length: 4, vsync: this);

    SliverAppBar mainAppBar = new SliverAppBar(
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
              setState(() {
                _currentAppBar = 'searchAppBar';
              });
            },
            child: Icon(Icons.search)),
        new Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
        ),
        new PopupMenuButton<String>(
          onSelected: (String choise) {
            print(choise);
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
    );
    SliverAppBar searchAppBar = new SliverAppBar(
      elevation: 5,
      backgroundColor: Colors.white,
      title: new TextField(
        decoration:
            new InputDecoration(border: InputBorder.none, hintText: 'جستجو'),
      ),
      pinned: true,
      leading: new GestureDetector(
        child: new Padding(
          padding: const EdgeInsets.only(right: 25),
          child: new Icon(Icons.arrow_back, color: new Color(0xff075e54)),
        ),
        onTap: () {
          setState(() {
            _currentAppBar = 'mainAppBar';
          });
        },
      ),
    );

    appBarList = <String, SliverAppBar>{
      'mainAppBar': mainAppBar,
      'searchAppBar': searchAppBar,
    };
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[appBarList[_currentAppBar]];
        },
        body: _currentAppBar == 'mainAppBar'
            ? new TabBarView(
                controller: _tabController,
                children: <Widget>[
                  new CameraScreen(),
                  new ChatScreen(),
                  new StatusScreen(),
                  new CallScreen()
                ],
              )
            : new Center(
                child: new Text('search aread'),
              ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          Navigator.push(context, new MaterialPageRoute(builder: (context)=>CreateChatScreen()));
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
