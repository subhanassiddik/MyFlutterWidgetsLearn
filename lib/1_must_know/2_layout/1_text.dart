//properti di widget text yang sering di gunakan

import 'package:flutter/material.dart';

class WidgetText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
              color: Colors.lightBlue,
              width: 150,
              height: 100,
              child: Text(
                'saya sedang melatih kemampuan flutter saya',
                // maxLines: 2,
                // overflow: TextOverflow.clip,
                // softWrap: false,
                // textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w700,
                    fontSize: 20),
              ))),
    );
  }
}
