import 'package:flutter/material.dart';

class WidgetTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text('tab Controller'),
            bottom: TabBar(tabs: <Widget>[
              Tab(icon: Icon(Icons.comment), text: 'comments'),
              Tab(child: Image(image: AssetImage('images/fb.png'))),
              Tab(icon: Icon(Icons.computer)),
              Tab(text: 'others'),
            ]),
          ),
          body: TabBarView(children: <Widget>[
            Center(child: Text('Tab 1')),
            Center(child: Text('Tab 2')),
            Center(child: Text('Tab 3')),
            Center(child: Text('Tab 4')),
          ]),
        ),
      ),
    );
  }
}
