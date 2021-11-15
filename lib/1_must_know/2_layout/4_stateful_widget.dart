//state == keadaan
//stateful widget => widget yang keadaan nya bisa berubah
//setState method => untuk mengubah tampilan sesuai dengan keadaan saat ini

import 'package:flutter/material.dart';

class WidgetStateFul extends StatefulWidget {
  @override
  _WidgetStateFulState createState() => _WidgetStateFulState();
}

class _WidgetStateFulState extends State<WidgetStateFul> {
  int number = 0;

  void pressButton() {
    setState(() {
      number += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              number.toString(),
              style: TextStyle(fontSize: 20.0 + number.toDouble()),
            ),
            ElevatedButton(
              onPressed: pressButton,
              child: Text('Press Button'),
            )
          ],
        ),
      ),
    );
  }
}
