import 'package:flutter/material.dart';

class DraftPage extends StatelessWidget {
  final Color backgroundColor;
  final Widget body;

  DraftPage({this.backgroundColor = Colors.pink, this.body});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('multi bloc dan multi page'),
        backgroundColor: backgroundColor,
      ),
      body: body,
    );
  }
}
