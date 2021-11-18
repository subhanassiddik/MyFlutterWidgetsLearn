import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondPagePart2 extends StatelessWidget {
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
            Column(
              children:
                  (Get.arguments as List<String>).map((e) => Text(e)).toList() +
                      [
                        Text(Get.parameters['name']),
                        Text(Get.parameters['from']),
                      ],
            )
          ],
        ),
      ),
    );
  }
}
