// import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class PageState with ChangeNotifier {
  static int _pageState = 1;
  int get pageState => _pageState;
  set pageState(int value) {
    _pageState = value;
    notifyListeners();
  }
}
