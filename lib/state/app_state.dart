import 'package:flutter/material.dart';

class UserState with ChangeNotifier {

}

class AppState with ChangeNotifier {
  String searchKeyword = '沙画神还原《清明上河图》';

  setSearchKeyword(String keyword) {
    searchKeyword = keyword;
    notifyListeners();
  }
}

// class UserState with ChangeNotifier {}
