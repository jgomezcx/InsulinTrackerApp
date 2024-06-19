import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  bool _showCarbContainer = false;
  bool get showCarbContainer => _showCarbContainer;
  set showCarbContainer(bool value) {
    _showCarbContainer = value;
  }

  bool _showBGContainer = false;
  bool get showBGContainer => _showBGContainer;
  set showBGContainer(bool value) {
    _showBGContainer = value;
  }

  String _fullname = '';
  String get fullname => _fullname;
  set fullname(String value) {
    _fullname = value;
  }

  int _carbUnits = 0;
  int get carbUnits => _carbUnits;
  set carbUnits(int value) {
    _carbUnits = value;
  }

  int _bgUnits = 0;
  int get bgUnits => _bgUnits;
  set bgUnits(int value) {
    _bgUnits = value;
  }

  List<String> _StringDateList = [];
  List<String> get StringDateList => _StringDateList;
  set StringDateList(List<String> value) {
    _StringDateList = value;
  }

  void addToStringDateList(String value) {
    StringDateList.add(value);
  }

  void removeFromStringDateList(String value) {
    StringDateList.remove(value);
  }

  void removeAtIndexFromStringDateList(int index) {
    StringDateList.removeAt(index);
  }

  void updateStringDateListAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    StringDateList[index] = updateFn(_StringDateList[index]);
  }

  void insertAtIndexInStringDateList(int index, String value) {
    StringDateList.insert(index, value);
  }
}
