import 'package:flutter/material.dart';

class WidgetRowColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Column 1'),
          Text('Column 2'),
          Text('Column 3'),
          Row(
            children: <Widget>[
              Text('Row 1'),
              Text('Row 2'),
              Text('Row 3'),
            ],
          )
        ],
      ),
    );
  }
}
