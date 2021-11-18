//Untuk menggunakan package getX MaterialApp harus diganti GetMaterialApp

//1. Performance => seminimal mungkin agar menggunakan resource yang ada di hp
//2. Productivity => sntax sibuat semudah mungkin agar mudah dipahami
//3. Organitation => dibuat agar view dan busines logic di buat terpisah

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:flutter_widget_learn/1_must_know/3_others/1_navigation/3_getX_part2/2_main_page_part2.dart';

class LoginPagePart2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('Login'),
          onPressed: () {
            Get.offNamed('/main');
            // Get.off(MainPagePart2());
          },
        ),
      ),
    );
  }
}
