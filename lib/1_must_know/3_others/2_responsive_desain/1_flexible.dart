import 'package:flutter/material.dart';

class WidgetFlexible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 1,
            child: Row(
              children: [
                mycontainer(warna: Colors.black, flex: 1),
                mycontainer(warna: Colors.green, flex: 1),
                mycontainer(warna: Colors.purple, flex: 1),
              ],
            ),
          ),
          mycontainer(warna: Colors.red, flex: 2),
          mycontainer(warna: Colors.yellow, flex: 1),
        ],
      ),
    );
  }
}


Flexible mycontainer({Color warna, int flex}) {
  return Flexible(flex: flex, child: Container(color: warna));
}
