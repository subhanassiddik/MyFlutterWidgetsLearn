import 'package:flutter/foundation.dart';

class Cart with ChangeNotifier {
  int _quantity = 0;
  int get quantity => this._quantity;

  set quantity(int value) {
    this._quantity = value;
    notifyListeners();
  }
}
