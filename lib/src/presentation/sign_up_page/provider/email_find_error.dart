import 'package:flutter/material.dart';

class SignUpEmailFindError extends ChangeNotifier {
  bool _state = true;

  bool get state => _state;

  void findError(String text) {
    if (text.contains("@dsm.hs.kr")) {
      _state = true;
      notifyListeners();
    } else {
      _state = false;
      notifyListeners();
    }
  }
}
