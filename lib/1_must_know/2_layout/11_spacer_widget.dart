import 'package:flutter/material.dart';

class WidgetSpacer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: <Widget>[
            Container(height: 80, width: 80, color: Colors.red[400]),
            Spacer(
              flex: 1,
            ),
            Container(height: 80, width: 80, color: Colors.yellow[400]),
            Spacer(
              flex: 2,
            ),
            Container(height: 80, width: 80, color: Colors.green[400]),
            Spacer(
              flex: 3,
            ),
          ],
        ),
      ),
    );
  }
}
