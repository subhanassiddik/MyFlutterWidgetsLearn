import 'package:flutter/material.dart';
import 'package:flutter_widget_learn/1_must_know/3_others/1_navigation/2_getX_part1/3_second_page.dart';
import 'package:get/get.dart';

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
            Get.to(SecondPage());
          },
        ),
      ),
    );
  }
}
