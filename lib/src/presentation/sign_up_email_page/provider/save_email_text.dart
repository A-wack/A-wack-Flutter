import 'package:flutter/material.dart';

class SignUpSaveEmailText extends ChangeNotifier {
  String _emailText = '';

  String get emailText => _emailText;

  void save(String text) {
    _emailText = text;
  }
}
