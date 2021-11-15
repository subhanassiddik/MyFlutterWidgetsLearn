import 'package:flutter/material.dart';

class WidgetTextStyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'text style demo',
          style: TextStyle(
            fontFamily: "CrashLandingBB",
            fontSize: 30.0,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.overline,
            decorationColor: Colors.amberAccent,
            decorationThickness: 5,
            decorationStyle: TextDecorationStyle.wavy,
          ),
        ),
      ),
    );
  }
}
