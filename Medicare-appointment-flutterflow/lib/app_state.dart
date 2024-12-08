import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _token = prefs.getString('ff_token') ?? _token;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_user')) {
        try {
          final serializedData = prefs.getString('ff_user') ?? '{}';
          _user = UserStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _vnLocation = '';
  String get vnLocation => _vnLocation;
  set vnLocation(String value) {
    _vnLocation = value;
  }

  String _district = '';
  String get district => _district;
  set district(String value) {
    _district = value;
  }

  String _ward = '';
  String get ward => _ward;
  set ward(String value) {
    _ward = value;
  }

  String _city = '';
  String get city => _city;
  set city(String value) {
    _city = value;
  }

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
    prefs.setString('ff_token', value);
  }

  UserStruct _user =
      UserStruct.fromSerializableMap(jsonDecode('{\"role\":\"{}\"}'));
  UserStruct get user => _user;
  set user(UserStruct value) {
    _user = value;
    prefs.setString('ff_user', value.serialize());
  }

  void updateUserStruct(Function(UserStruct) updateFn) {
    updateFn(_user);
    prefs.setString('ff_user', _user.serialize());
  }

  String _validation = '';
  String get validation => _validation;
  set validation(String value) {
    _validation = value;
  }

  String _textDofB = '';
  String get textDofB => _textDofB;
  set textDofB(String value) {
    _textDofB = value;
  }

  List<AvailableTimeStruct> _lstTime = [
    AvailableTimeStruct.fromSerializableMap(
        jsonDecode('{\"time\":\"00:00\",\"count\":\"0\"}'))
  ];
  List<AvailableTimeStruct> get lstTime => _lstTime;
  set lstTime(List<AvailableTimeStruct> value) {
    _lstTime = value;
  }

  void addToLstTime(AvailableTimeStruct value) {
    lstTime.add(value);
  }

  void removeFromLstTime(AvailableTimeStruct value) {
    lstTime.remove(value);
  }

  void removeAtIndexFromLstTime(int index) {
    lstTime.removeAt(index);
  }

  void updateLstTimeAtIndex(
    int index,
    AvailableTimeStruct Function(AvailableTimeStruct) updateFn,
  ) {
    lstTime[index] = updateFn(_lstTime[index]);
  }

  void insertAtIndexInLstTime(int index, AvailableTimeStruct value) {
    lstTime.insert(index, value);
  }

  List<String> _route = [];
  List<String> get route => _route;
  set route(List<String> value) {
    _route = value;
  }

  void addToRoute(String value) {
    route.add(value);
  }

  void removeFromRoute(String value) {
    route.remove(value);
  }

  void removeAtIndexFromRoute(int index) {
    route.removeAt(index);
  }

  void updateRouteAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    route[index] = updateFn(_route[index]);
  }

  void insertAtIndexInRoute(int index, String value) {
    route.insert(index, value);
  }

  String _pushKey = '';
  String get pushKey => _pushKey;
  set pushKey(String value) {
    _pushKey = value;
  }

  LatLng? _address = const LatLng(10.8506324, 106.7719131);
  LatLng? get address => _address;
  set address(LatLng? value) {
    _address = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
