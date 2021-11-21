import 'package:flutter/foundation.dart';

class Money with ChangeNotifier {
  int _balance = 10000;
  int get balance => this._balance;

  set balance(int value) {
    this._balance = value;
    notifyListeners();
  }
}
