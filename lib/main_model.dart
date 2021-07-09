import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String kboyText = 'kboyじゃない';

  void changeKboyText() {
     kboyText = 'kboyさんかっこいい';
    notifyListeners();
  }
}
