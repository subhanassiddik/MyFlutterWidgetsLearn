import 'package:flutter/material.dart';
import 'package:flutter_widget_learn/1_must_know/3_others/1_navigation/2_getX_part1/2_main_page.dart';
import 'package:get/get.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('third page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.offAll(MainPage());
              },
              child: Text('backto main page'),
            ),
            ElevatedButton(
              onPressed: () {
                Get.back();
              },
              child: Text('backto second page'),
            ),
          ],
        ),
      ),
    );
  }
}
