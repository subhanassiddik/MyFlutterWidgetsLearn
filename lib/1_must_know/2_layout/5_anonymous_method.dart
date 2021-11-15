//anonymous method => method yang tidak mempunyai nama

import 'package:flutter/material.dart';

class AnonymousMethod extends StatefulWidget {
  @override
  _AnonymousMethodState createState() => _AnonymousMethodState();
}

class _AnonymousMethodState extends State<AnonymousMethod> {
  String message = 'belum di tekan !!!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(message),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    message = 'sudah di tekan !!!';
                  });
                },
                child: Text('press me'))
          ],
        ),
      ),
    );
  }
}
