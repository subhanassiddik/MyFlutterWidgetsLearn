//media query ;
//1. untuk mendapatkan ukuran dari layar
//2. mendapatkan orientasi dari layar (landcape atau potrait)

import 'package:flutter/material.dart';

class WidgetMediaQuery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: (MediaQuery.of(context).orientation == Orientation.portrait)
            ? Column(
                children: generateContainer(),
              )
            : Row(
                children: generateContainer(),
              )

        //--------------------------------------

        // Container(
        //   color: Colors.yellow,
        //   width: MediaQuery.of(context).size.width / 3,
        //   height: MediaQuery.of(context).size.height / 2,
        // ),

        );
  }
}

List<Widget> generateContainer() {
  return [
    Container(
      width: 100,
      height: 100,
      color: Colors.amber,
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.yellow,
    ),
    Container(
      width: 100,
      height: 100,
      color: Colors.green,
    ),
  ];
}
