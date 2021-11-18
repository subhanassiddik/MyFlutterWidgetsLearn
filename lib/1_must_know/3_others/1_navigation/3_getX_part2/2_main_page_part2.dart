import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:flutter_widget_learn/1_must_know/3_others/1_navigation/3_getX_part2/3_second_page_part2.dart';

//ada 2 cara mengirim nilai ke halaman yanh lain
//1. melalui parameter argument
//2. melalui url route

class MainPagePart2 extends StatelessWidget {
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
            Get.toNamed(
              '/second?name=Subhan assiddik&from=Indonesia',
              arguments: ['hallo', 'world'],
            );
            // Get.to(
            //   SecondPagePart2(),
            //   transition: Transition.rightToLeftWithFade,
            //   // duration: Duration(seconds: 2),
            // );
          },
        ),
      ),
    );
  }
}
