import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_widget_learn/2_should_know/1_provider/1/2_application_color.dart';

//sebelum membungkus scaffold dengan ChangeNotifierProvider tambahkan provider di pubspec
//consumer => mennadakan bahwa widget mana yang akan diubah,menunggu perubahan dari applicatin color

class WidgetProvider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider<ApplicationColor>(
        create: (context) => ApplicationColor(),
        child: Scaffold(
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Consumer<ApplicationColor>(
                  builder: (context, applicationColor, _) => AnimatedContainer(
                      height: 100,
                      width: 100,
                      color: applicationColor.color,
                      duration: Duration(milliseconds: 10)),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(margin: EdgeInsets.all(5), child: Text('AM')),
                  Consumer<ApplicationColor>(
                      builder: (context, applicationColor, _) => Switch(
                          value: applicationColor.isLightblue,
                          onChanged: (value) {
                            applicationColor.isLightblue = value;
                          })),
                  Container(margin: EdgeInsets.all(5), child: Text('LB'))
                ])
              ]),
        ),
      ),
    );
  }
}
