import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

//ini adalah shared state dengan class application color
//shared state harus implementasi class Changenotifier
//tambahkan provider di pubspec

class ApplicationColor with ChangeNotifier {
  bool _isLightblue = false;
  bool get isLightblue => this._isLightblue;
  set isLightblue(bool value) {
    this._isLightblue = value;
    notifyListeners();
  }

  Color get color => (_isLightblue) ? Colors.lightBlue : Colors.amber;
}
