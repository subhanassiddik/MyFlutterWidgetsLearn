import 'package:flutter/material.dart';

class WidgetStackAlign extends StatelessWidget {
  final List<Widget> widgets = [];

  WidgetStackAlign() {
    for (var i = 0; i < 20; i++) {
      widgets.add(
        Container(
          margin: EdgeInsets.all(20.0),
          child: Text(
            'ini adalah text list view ...',
            style: TextStyle(fontSize: 20),
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.amber[400],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: Colors.amber[400],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ListView(
            children: [
              Column(
                children: widgets,
              ),
            ],
          ),
          Align(
              alignment: Alignment.bottomCenter,
              // alignment: Alignment(0, 1),
              child: ElevatedButton(
                  onPressed: () {}, child: Text('click this button')))
        ],
      ),
    );
  }
}
