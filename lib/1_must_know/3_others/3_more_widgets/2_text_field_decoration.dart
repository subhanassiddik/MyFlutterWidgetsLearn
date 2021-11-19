import 'package:flutter/material.dart';

class TextFieldDecoration extends StatefulWidget {
  @override
  _TextFieldDecorationState createState() => _TextFieldDecorationState();
}

//prefix => didepan / awalan
//suffix => dibelakang / akhir

class _TextFieldDecorationState extends State<TextFieldDecoration> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20),
          child: TextField(
            maxLength: 10,
            decoration: InputDecoration(
              fillColor: Colors.blue[50],
              filled: true,
              icon: Icon(Icons.adb),
              prefixIcon: Icon(Icons.person),
              prefix: Container(
                height: 5,
                width: 5,
                color: Colors.red,
              ),
              suffix: Container(
                height: 5,
                width: 5,
                color: Colors.red,
              ),
              // prefixText: 'Name :',
              // prefixStyle:
              //     TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
              labelText: 'Name',
              hintText: 'Masukkan nama kamu...',
              hintStyle: TextStyle(fontSize: 15),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
              ),
              // InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
