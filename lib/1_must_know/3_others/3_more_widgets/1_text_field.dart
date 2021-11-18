import 'package:flutter/material.dart';

class WidgetTextField extends StatefulWidget {
  @override
  _WidgetTextFieldState createState() => _WidgetTextFieldState();
}

class _WidgetTextFieldState extends State<WidgetTextField> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextField(
              // maxLength: 5,
              // obscureText: true,
              onChanged: (value) {
                setState(() {});
              },
              controller: controller,
            ),
            Text(controller.text),
          ],
        ),
      ),
    );
  }
}
