import 'dart:math';
import 'package:flutter/material.dart';

class WidgetAnimatedContainer extends StatefulWidget {
  @override
  _WidgetAnimatedContainerState createState() =>
      _WidgetAnimatedContainerState();
}

class _WidgetAnimatedContainerState extends State<WidgetAnimatedContainer> {
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {});
          },
          child: AnimatedContainer(
            color: Color.fromARGB(
              225,
              random.nextInt(101),
              random.nextInt(101),
              random.nextInt(101),
            ),
            height: 50.0 + random.nextInt(101),
            width: 50.0 + random.nextInt(101),
            duration: Duration(seconds: 1),
          ),
        ),
      ),
    );
  }
}
