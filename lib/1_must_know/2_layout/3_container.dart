import 'package:flutter/material.dart';

//margin => jarak antara widget
//padding => jarak antara isi di dalam kontainer dengan kontainer itu sendiri

class WidgetContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10.0),
        padding: EdgeInsets.all(10.0),
        // margin: EdgeInsets.fromLTRB(20, 30, 40, 50),
        // padding: EdgeInsets.only(bottom: 20.0, top: 20.0),
        color: Colors.red[400],
        child: Container(
          // color: Colors.yellow[400],
          decoration: BoxDecoration(
              // color: Colors.amber,
              borderRadius: BorderRadius.circular(20.0),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: <Color>[
                    Colors.amber,
                    Colors.green,
                  ])),
        ),
      ),
    );
  }
}
