import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('second page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
            // Navigator.of(context, rootNavigator: true).pop(context);
            // Navigator.of(context).pop();
            // Navigator.of(context).maybePop();
          },
          child: Text('back'),
        ),
      ),
    );
  }
}
