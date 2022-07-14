import 'package:flutter/cupertino.dart';

class editProfile with ChangeNotifier {
  int _id = 0;
  int get id => _id;
  String _token = '';
  String get token => _token;
  void setTokenandID(int thisid, String thistoken){
    _token = thistoken;
    _id = thisid;
    notifyListeners();

  }

}