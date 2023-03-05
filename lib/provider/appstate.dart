import 'package:flutter/foundation.dart';

class AppState extends ChangeNotifier {
  int _count = 0;
  int get getCount => _count;

  void incCount() {
    _count++;
    print(_count);
    notifyListeners();
  }
}