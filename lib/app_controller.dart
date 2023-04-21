import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();
 
  bool isDartTheme = false;

  changeTheme(value) {
    isDartTheme = !isDartTheme;
    print('Change ${isDartTheme}');
    notifyListeners();
  }
}