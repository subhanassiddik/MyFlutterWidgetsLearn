//page atau screen di flutter di sebut route
//untuk mengatur route di flutter di sebut navigator
//keyword :
//  1. push replacement => page di timpa
//  2. push => page di tumpuk
//  3. Pop => mengangkat screen tumpukan di bawahnya/ screen sebelumnya

import 'package:flutter/material.dart';
import 'package:flutter_widget_learn/1_must_know/3_others/1_navigation/1_multi_page/second_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main page'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('goTo Second page'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SecondPage();
            }));
          },
        ),
      ),
    );
  }
}
