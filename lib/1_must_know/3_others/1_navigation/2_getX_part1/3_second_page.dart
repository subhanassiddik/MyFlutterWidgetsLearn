import 'package:flutter/material.dart';
import 'package:flutter_widget_learn/1_must_know/3_others/1_navigation/2_getX_part1/4_third_page.dart';
import 'package:get/get.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text('backto main page'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.to(ThirdPage());
              },
              child: Text('goto third page'),
            ),
          ],
        ),
      ),
    );
  }
}
