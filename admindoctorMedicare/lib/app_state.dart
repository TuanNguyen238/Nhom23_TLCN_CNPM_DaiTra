import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
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
      _examRooms = prefs
              .getStringList('ff_examRooms')
              ?.map((x) {
                try {
                  return ExamRoomStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _examRooms;
    });
    _safeInit(() {
      _users = prefs
              .getStringList('ff_users')
              ?.map((x) {
                try {
                  return UserStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _users;
    });
    _safeInit(() {
      _medicines = prefs
              .getStringList('ff_medicines')
              ?.map((x) {
                try {
                  return MedicineStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _medicines;
    });
    _safeInit(() {
      _countRoom = prefs.getInt('ff_countRoom') ?? _countRoom;
    });
    _safeInit(() {
      _countMedicine = prefs.getInt('ff_countMedicine') ?? _countMedicine;
    });
    _safeInit(() {
      _countMonthUser =
          prefs.getStringList('ff_countMonthUser')?.map(int.parse).toList() ??
              _countMonthUser;
    });
    _safeInit(() {
      _counMonthDoctor =
          prefs.getStringList('ff_counMonthDoctor')?.map(int.parse).toList() ??
              _counMonthDoctor;
    });
    _safeInit(() {
      _countMonthAdmin =
          prefs.getStringList('ff_countMonthAdmin')?.map(int.parse).toList() ??
              _countMonthAdmin;
    });
    _safeInit(() {
      _listCountUser =
          prefs.getStringList('ff_listCountUser')?.map(int.parse).toList() ??
              _listCountUser;
    });
    _safeInit(() {
      _countMedicineMonth = prefs
              .getStringList('ff_countMedicineMonth')
              ?.map(int.parse)
              .toList() ??
          _countMedicineMonth;
    });
    _safeInit(() {
      _xAxisRevenueLine =
          prefs.getStringList('ff_xAxisRevenueLine') ?? _xAxisRevenueLine;
    });
    _safeInit(() {
      _yAxisRevenueLine =
          prefs.getStringList('ff_yAxisRevenueLine')?.map(int.parse).toList() ??
              _yAxisRevenueLine;
    });
    _safeInit(() {
      _countRevenue = prefs.getInt('ff_countRevenue') ?? _countRevenue;
    });
    _safeInit(() {
      _countMonthRevenue = prefs
              .getStringList('ff_countMonthRevenue')
              ?.map(int.parse)
              .toList() ??
          _countMonthRevenue;
    });
    _safeInit(() {
      _countDayRegisterdRevenue = prefs
              .getStringList('ff_countDayRegisterdRevenue')
              ?.map(int.parse)
              .toList() ??
          _countDayRegisterdRevenue;
    });
    _safeInit(() {
      _countDaySuccessfulRevenue = prefs
              .getStringList('ff_countDaySuccessfulRevenue')
              ?.map(int.parse)
              .toList() ??
          _countDaySuccessfulRevenue;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _activePage = 'Dashboard';
  String get activePage => _activePage;
  set activePage(String value) {
    _activePage = value;
  }

  String _token = '';
  String get token => _token;
  set token(String value) {
    _token = value;
  }

  UserStruct _user = UserStruct();
  UserStruct get user => _user;
  set user(UserStruct value) {
    _user = value;
  }

  void updateUserStruct(Function(UserStruct) updateFn) {
    updateFn(_user);
  }

  List<ExamRoomStruct> _examRooms = [];
  List<ExamRoomStruct> get examRooms => _examRooms;
  set examRooms(List<ExamRoomStruct> value) {
    _examRooms = value;
    prefs.setStringList(
        'ff_examRooms', value.map((x) => x.serialize()).toList());
  }

  void addToExamRooms(ExamRoomStruct value) {
    examRooms.add(value);
    prefs.setStringList(
        'ff_examRooms', _examRooms.map((x) => x.serialize()).toList());
  }

  void removeFromExamRooms(ExamRoomStruct value) {
    examRooms.remove(value);
    prefs.setStringList(
        'ff_examRooms', _examRooms.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromExamRooms(int index) {
    examRooms.removeAt(index);
    prefs.setStringList(
        'ff_examRooms', _examRooms.map((x) => x.serialize()).toList());
  }

  void updateExamRoomsAtIndex(
    int index,
    ExamRoomStruct Function(ExamRoomStruct) updateFn,
  ) {
    examRooms[index] = updateFn(_examRooms[index]);
    prefs.setStringList(
        'ff_examRooms', _examRooms.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInExamRooms(int index, ExamRoomStruct value) {
    examRooms.insert(index, value);
    prefs.setStringList(
        'ff_examRooms', _examRooms.map((x) => x.serialize()).toList());
  }

  List<UserStruct> _users = [];
  List<UserStruct> get users => _users;
  set users(List<UserStruct> value) {
    _users = value;
    prefs.setStringList('ff_users', value.map((x) => x.serialize()).toList());
  }

  void addToUsers(UserStruct value) {
    users.add(value);
    prefs.setStringList('ff_users', _users.map((x) => x.serialize()).toList());
  }

  void removeFromUsers(UserStruct value) {
    users.remove(value);
    prefs.setStringList('ff_users', _users.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromUsers(int index) {
    users.removeAt(index);
    prefs.setStringList('ff_users', _users.map((x) => x.serialize()).toList());
  }

  void updateUsersAtIndex(
    int index,
    UserStruct Function(UserStruct) updateFn,
  ) {
    users[index] = updateFn(_users[index]);
    prefs.setStringList('ff_users', _users.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInUsers(int index, UserStruct value) {
    users.insert(index, value);
    prefs.setStringList('ff_users', _users.map((x) => x.serialize()).toList());
  }

  List<MedicineStruct> _medicines = [];
  List<MedicineStruct> get medicines => _medicines;
  set medicines(List<MedicineStruct> value) {
    _medicines = value;
    prefs.setStringList(
        'ff_medicines', value.map((x) => x.serialize()).toList());
  }

  void addToMedicines(MedicineStruct value) {
    medicines.add(value);
    prefs.setStringList(
        'ff_medicines', _medicines.map((x) => x.serialize()).toList());
  }

  void removeFromMedicines(MedicineStruct value) {
    medicines.remove(value);
    prefs.setStringList(
        'ff_medicines', _medicines.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromMedicines(int index) {
    medicines.removeAt(index);
    prefs.setStringList(
        'ff_medicines', _medicines.map((x) => x.serialize()).toList());
  }

  void updateMedicinesAtIndex(
    int index,
    MedicineStruct Function(MedicineStruct) updateFn,
  ) {
    medicines[index] = updateFn(_medicines[index]);
    prefs.setStringList(
        'ff_medicines', _medicines.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInMedicines(int index, MedicineStruct value) {
    medicines.insert(index, value);
    prefs.setStringList(
        'ff_medicines', _medicines.map((x) => x.serialize()).toList());
  }

  int _countRoom = 0;
  int get countRoom => _countRoom;
  set countRoom(int value) {
    _countRoom = value;
    prefs.setInt('ff_countRoom', value);
  }

  int _countMedicine = 0;
  int get countMedicine => _countMedicine;
  set countMedicine(int value) {
    _countMedicine = value;
    prefs.setInt('ff_countMedicine', value);
  }

  List<int> _countMonthUser = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  List<int> get countMonthUser => _countMonthUser;
  set countMonthUser(List<int> value) {
    _countMonthUser = value;
    prefs.setStringList(
        'ff_countMonthUser', value.map((x) => x.toString()).toList());
  }

  void addToCountMonthUser(int value) {
    countMonthUser.add(value);
    prefs.setStringList(
        'ff_countMonthUser', _countMonthUser.map((x) => x.toString()).toList());
  }

  void removeFromCountMonthUser(int value) {
    countMonthUser.remove(value);
    prefs.setStringList(
        'ff_countMonthUser', _countMonthUser.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromCountMonthUser(int index) {
    countMonthUser.removeAt(index);
    prefs.setStringList(
        'ff_countMonthUser', _countMonthUser.map((x) => x.toString()).toList());
  }

  void updateCountMonthUserAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    countMonthUser[index] = updateFn(_countMonthUser[index]);
    prefs.setStringList(
        'ff_countMonthUser', _countMonthUser.map((x) => x.toString()).toList());
  }

  void insertAtIndexInCountMonthUser(int index, int value) {
    countMonthUser.insert(index, value);
    prefs.setStringList(
        'ff_countMonthUser', _countMonthUser.map((x) => x.toString()).toList());
  }

  List<int> _counMonthDoctor = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  List<int> get counMonthDoctor => _counMonthDoctor;
  set counMonthDoctor(List<int> value) {
    _counMonthDoctor = value;
    prefs.setStringList(
        'ff_counMonthDoctor', value.map((x) => x.toString()).toList());
  }

  void addToCounMonthDoctor(int value) {
    counMonthDoctor.add(value);
    prefs.setStringList('ff_counMonthDoctor',
        _counMonthDoctor.map((x) => x.toString()).toList());
  }

  void removeFromCounMonthDoctor(int value) {
    counMonthDoctor.remove(value);
    prefs.setStringList('ff_counMonthDoctor',
        _counMonthDoctor.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromCounMonthDoctor(int index) {
    counMonthDoctor.removeAt(index);
    prefs.setStringList('ff_counMonthDoctor',
        _counMonthDoctor.map((x) => x.toString()).toList());
  }

  void updateCounMonthDoctorAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    counMonthDoctor[index] = updateFn(_counMonthDoctor[index]);
    prefs.setStringList('ff_counMonthDoctor',
        _counMonthDoctor.map((x) => x.toString()).toList());
  }

  void insertAtIndexInCounMonthDoctor(int index, int value) {
    counMonthDoctor.insert(index, value);
    prefs.setStringList('ff_counMonthDoctor',
        _counMonthDoctor.map((x) => x.toString()).toList());
  }

  List<int> _countMonthAdmin = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  List<int> get countMonthAdmin => _countMonthAdmin;
  set countMonthAdmin(List<int> value) {
    _countMonthAdmin = value;
    prefs.setStringList(
        'ff_countMonthAdmin', value.map((x) => x.toString()).toList());
  }

  void addToCountMonthAdmin(int value) {
    countMonthAdmin.add(value);
    prefs.setStringList('ff_countMonthAdmin',
        _countMonthAdmin.map((x) => x.toString()).toList());
  }

  void removeFromCountMonthAdmin(int value) {
    countMonthAdmin.remove(value);
    prefs.setStringList('ff_countMonthAdmin',
        _countMonthAdmin.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromCountMonthAdmin(int index) {
    countMonthAdmin.removeAt(index);
    prefs.setStringList('ff_countMonthAdmin',
        _countMonthAdmin.map((x) => x.toString()).toList());
  }

  void updateCountMonthAdminAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    countMonthAdmin[index] = updateFn(_countMonthAdmin[index]);
    prefs.setStringList('ff_countMonthAdmin',
        _countMonthAdmin.map((x) => x.toString()).toList());
  }

  void insertAtIndexInCountMonthAdmin(int index, int value) {
    countMonthAdmin.insert(index, value);
    prefs.setStringList('ff_countMonthAdmin',
        _countMonthAdmin.map((x) => x.toString()).toList());
  }

  List<int> _listCountUser = [0, 0, 0, 0];
  List<int> get listCountUser => _listCountUser;
  set listCountUser(List<int> value) {
    _listCountUser = value;
    prefs.setStringList(
        'ff_listCountUser', value.map((x) => x.toString()).toList());
  }

  void addToListCountUser(int value) {
    listCountUser.add(value);
    prefs.setStringList(
        'ff_listCountUser', _listCountUser.map((x) => x.toString()).toList());
  }

  void removeFromListCountUser(int value) {
    listCountUser.remove(value);
    prefs.setStringList(
        'ff_listCountUser', _listCountUser.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromListCountUser(int index) {
    listCountUser.removeAt(index);
    prefs.setStringList(
        'ff_listCountUser', _listCountUser.map((x) => x.toString()).toList());
  }

  void updateListCountUserAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    listCountUser[index] = updateFn(_listCountUser[index]);
    prefs.setStringList(
        'ff_listCountUser', _listCountUser.map((x) => x.toString()).toList());
  }

  void insertAtIndexInListCountUser(int index, int value) {
    listCountUser.insert(index, value);
    prefs.setStringList(
        'ff_listCountUser', _listCountUser.map((x) => x.toString()).toList());
  }

  List<RecordStruct> _records = [
    RecordStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"Hello World\",\"recordCode\":\"Hello World\",\"reasonForVisit\":\"Hello World\",\"diagnosis\":\"Hello World\",\"examResult\":\"Hello World\",\"paid\":\"false\",\"status\":\"Hello World\",\"orderNumber\":\"0\",\"patient\":\"{\\\"id\\\":\\\"Hello World\\\",\\\"patientCode\\\":\\\"Hello World\\\",\\\"fullName\\\":\\\"Hello World\\\",\\\"phoneNumber\\\":\\\"Hello World\\\",\\\"address\\\":\\\"Hello World\\\",\\\"identifyCard\\\":\\\"Hello World\\\",\\\"dateOfBirth\\\":\\\"Hello World\\\",\\\"gender\\\":\\\"Hello World\\\",\\\"status\\\":\\\"Hello World\\\"}\",\"prescription\":\"{\\\"id\\\":\\\"Hello World\\\",\\\"note\\\":\\\"Hello World\\\",\\\"dosages\\\":\\\"[\\\\\\\"{\\\\\\\\\\\\\\\"id\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"Hello World\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"morning\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"0\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"afternoon\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"0\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"evening\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"0\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"days\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"0\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"medicine\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"{\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"id\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"Hello World\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"name\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"Hello World\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"description\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"Hello World\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"level\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"0\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"price\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"Hello World\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"quantity\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"0\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"createdAt\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"Hello World\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"status\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"Hello World\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"imageUrl\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"Hello World\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"}\\\\\\\\\\\\\\\"}\\\\\\\"]\\\"}\",\"detailedRecord\":\"{\\\"id\\\":\\\"Hello World\\\",\\\"weight\\\":\\\"0.0\\\",\\\"height\\\":\\\"0.0\\\",\\\"bmi\\\":\\\"0.0\\\",\\\"heartRate\\\":\\\"0\\\",\\\"respiratoryRate\\\":\\\"0\\\",\\\"bloodPressure\\\":\\\"Hello World\\\",\\\"spO2\\\":\\\"0\\\",\\\"clinicalIndicator\\\":\\\"Hello World\\\",\\\"imageUrl\\\":\\\"Hello World\\\"}\",\"examRoom\":\"{\\\"id\\\":\\\"Hello World\\\",\\\"examDate\\\":\\\"Hello World\\\",\\\"examTime\\\":\\\"Hello World\\\",\\\"roomNumber\\\":\\\"0\\\",\\\"maxPatients\\\":\\\"0\\\",\\\"currentPatients\\\":\\\"0\\\",\\\"doctor\\\":\\\"{\\\\\\\"id\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"type\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"user\\\\\\\":\\\\\\\"{\\\\\\\\\\\\\\\"id\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"Hello World\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"username\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"Hello World\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"email\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"Hello World\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"password\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"Hello World\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"phoneNumber\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"Hello World\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"identifyCard\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"Hello World\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"status\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"Hello World\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"createdAt\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"Hello World\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\"role\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\"{\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"name\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"Hello World\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\",\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"description\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\":\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"Hello World\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\"}\\\\\\\\\\\\\\\"}\\\\\\\"}\\\"}\"}'))
  ];
  List<RecordStruct> get records => _records;
  set records(List<RecordStruct> value) {
    _records = value;
  }

  void addToRecords(RecordStruct value) {
    records.add(value);
  }

  void removeFromRecords(RecordStruct value) {
    records.remove(value);
  }

  void removeAtIndexFromRecords(int index) {
    records.removeAt(index);
  }

  void updateRecordsAtIndex(
    int index,
    RecordStruct Function(RecordStruct) updateFn,
  ) {
    records[index] = updateFn(_records[index]);
  }

  void insertAtIndexInRecords(int index, RecordStruct value) {
    records.insert(index, value);
  }

  List<int> _countMedicineMonth = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0];
  List<int> get countMedicineMonth => _countMedicineMonth;
  set countMedicineMonth(List<int> value) {
    _countMedicineMonth = value;
    prefs.setStringList(
        'ff_countMedicineMonth', value.map((x) => x.toString()).toList());
  }

  void addToCountMedicineMonth(int value) {
    countMedicineMonth.add(value);
    prefs.setStringList('ff_countMedicineMonth',
        _countMedicineMonth.map((x) => x.toString()).toList());
  }

  void removeFromCountMedicineMonth(int value) {
    countMedicineMonth.remove(value);
    prefs.setStringList('ff_countMedicineMonth',
        _countMedicineMonth.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromCountMedicineMonth(int index) {
    countMedicineMonth.removeAt(index);
    prefs.setStringList('ff_countMedicineMonth',
        _countMedicineMonth.map((x) => x.toString()).toList());
  }

  void updateCountMedicineMonthAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    countMedicineMonth[index] = updateFn(_countMedicineMonth[index]);
    prefs.setStringList('ff_countMedicineMonth',
        _countMedicineMonth.map((x) => x.toString()).toList());
  }

  void insertAtIndexInCountMedicineMonth(int index, int value) {
    countMedicineMonth.insert(index, value);
    prefs.setStringList('ff_countMedicineMonth',
        _countMedicineMonth.map((x) => x.toString()).toList());
  }

  List<String> _xAxisRevenueLine = [
    '1',
    '2',
    '3',
    '4',
    '5',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0',
    '0'
  ];
  List<String> get xAxisRevenueLine => _xAxisRevenueLine;
  set xAxisRevenueLine(List<String> value) {
    _xAxisRevenueLine = value;
    prefs.setStringList('ff_xAxisRevenueLine', value);
  }

  void addToXAxisRevenueLine(String value) {
    xAxisRevenueLine.add(value);
    prefs.setStringList('ff_xAxisRevenueLine', _xAxisRevenueLine);
  }

  void removeFromXAxisRevenueLine(String value) {
    xAxisRevenueLine.remove(value);
    prefs.setStringList('ff_xAxisRevenueLine', _xAxisRevenueLine);
  }

  void removeAtIndexFromXAxisRevenueLine(int index) {
    xAxisRevenueLine.removeAt(index);
    prefs.setStringList('ff_xAxisRevenueLine', _xAxisRevenueLine);
  }

  void updateXAxisRevenueLineAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    xAxisRevenueLine[index] = updateFn(_xAxisRevenueLine[index]);
    prefs.setStringList('ff_xAxisRevenueLine', _xAxisRevenueLine);
  }

  void insertAtIndexInXAxisRevenueLine(int index, String value) {
    xAxisRevenueLine.insert(index, value);
    prefs.setStringList('ff_xAxisRevenueLine', _xAxisRevenueLine);
  }

  List<int> _yAxisRevenueLine = [6, 88, 9, 5, 0, 0, 0, 0, 0, 0, 0, 0];
  List<int> get yAxisRevenueLine => _yAxisRevenueLine;
  set yAxisRevenueLine(List<int> value) {
    _yAxisRevenueLine = value;
    prefs.setStringList(
        'ff_yAxisRevenueLine', value.map((x) => x.toString()).toList());
  }

  void addToYAxisRevenueLine(int value) {
    yAxisRevenueLine.add(value);
    prefs.setStringList('ff_yAxisRevenueLine',
        _yAxisRevenueLine.map((x) => x.toString()).toList());
  }

  void removeFromYAxisRevenueLine(int value) {
    yAxisRevenueLine.remove(value);
    prefs.setStringList('ff_yAxisRevenueLine',
        _yAxisRevenueLine.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromYAxisRevenueLine(int index) {
    yAxisRevenueLine.removeAt(index);
    prefs.setStringList('ff_yAxisRevenueLine',
        _yAxisRevenueLine.map((x) => x.toString()).toList());
  }

  void updateYAxisRevenueLineAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    yAxisRevenueLine[index] = updateFn(_yAxisRevenueLine[index]);
    prefs.setStringList('ff_yAxisRevenueLine',
        _yAxisRevenueLine.map((x) => x.toString()).toList());
  }

  void insertAtIndexInYAxisRevenueLine(int index, int value) {
    yAxisRevenueLine.insert(index, value);
    prefs.setStringList('ff_yAxisRevenueLine',
        _yAxisRevenueLine.map((x) => x.toString()).toList());
  }

  int _countRevenue = 0;
  int get countRevenue => _countRevenue;
  set countRevenue(int value) {
    _countRevenue = value;
    prefs.setInt('ff_countRevenue', value);
  }

  List<int> _countMonthRevenue = [0, 45, 0, 0, 0, 77, 0, 66, 5, 0, 9, 0];
  List<int> get countMonthRevenue => _countMonthRevenue;
  set countMonthRevenue(List<int> value) {
    _countMonthRevenue = value;
    prefs.setStringList(
        'ff_countMonthRevenue', value.map((x) => x.toString()).toList());
  }

  void addToCountMonthRevenue(int value) {
    countMonthRevenue.add(value);
    prefs.setStringList('ff_countMonthRevenue',
        _countMonthRevenue.map((x) => x.toString()).toList());
  }

  void removeFromCountMonthRevenue(int value) {
    countMonthRevenue.remove(value);
    prefs.setStringList('ff_countMonthRevenue',
        _countMonthRevenue.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromCountMonthRevenue(int index) {
    countMonthRevenue.removeAt(index);
    prefs.setStringList('ff_countMonthRevenue',
        _countMonthRevenue.map((x) => x.toString()).toList());
  }

  void updateCountMonthRevenueAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    countMonthRevenue[index] = updateFn(_countMonthRevenue[index]);
    prefs.setStringList('ff_countMonthRevenue',
        _countMonthRevenue.map((x) => x.toString()).toList());
  }

  void insertAtIndexInCountMonthRevenue(int index, int value) {
    countMonthRevenue.insert(index, value);
    prefs.setStringList('ff_countMonthRevenue',
        _countMonthRevenue.map((x) => x.toString()).toList());
  }

  List<int> _countDayRegisterdRevenue = [44, 0, 0, 0, 55, 0, 8, 0, 0, 0];
  List<int> get countDayRegisterdRevenue => _countDayRegisterdRevenue;
  set countDayRegisterdRevenue(List<int> value) {
    _countDayRegisterdRevenue = value;
    prefs.setStringList(
        'ff_countDayRegisterdRevenue', value.map((x) => x.toString()).toList());
  }

  void addToCountDayRegisterdRevenue(int value) {
    countDayRegisterdRevenue.add(value);
    prefs.setStringList('ff_countDayRegisterdRevenue',
        _countDayRegisterdRevenue.map((x) => x.toString()).toList());
  }

  void removeFromCountDayRegisterdRevenue(int value) {
    countDayRegisterdRevenue.remove(value);
    prefs.setStringList('ff_countDayRegisterdRevenue',
        _countDayRegisterdRevenue.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromCountDayRegisterdRevenue(int index) {
    countDayRegisterdRevenue.removeAt(index);
    prefs.setStringList('ff_countDayRegisterdRevenue',
        _countDayRegisterdRevenue.map((x) => x.toString()).toList());
  }

  void updateCountDayRegisterdRevenueAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    countDayRegisterdRevenue[index] =
        updateFn(_countDayRegisterdRevenue[index]);
    prefs.setStringList('ff_countDayRegisterdRevenue',
        _countDayRegisterdRevenue.map((x) => x.toString()).toList());
  }

  void insertAtIndexInCountDayRegisterdRevenue(int index, int value) {
    countDayRegisterdRevenue.insert(index, value);
    prefs.setStringList('ff_countDayRegisterdRevenue',
        _countDayRegisterdRevenue.map((x) => x.toString()).toList());
  }

  List<int> _countDaySuccessfulRevenue = [0, 0, 77, 0, 66, 9, 0, 0, 0, 0];
  List<int> get countDaySuccessfulRevenue => _countDaySuccessfulRevenue;
  set countDaySuccessfulRevenue(List<int> value) {
    _countDaySuccessfulRevenue = value;
    prefs.setStringList('ff_countDaySuccessfulRevenue',
        value.map((x) => x.toString()).toList());
  }

  void addToCountDaySuccessfulRevenue(int value) {
    countDaySuccessfulRevenue.add(value);
    prefs.setStringList('ff_countDaySuccessfulRevenue',
        _countDaySuccessfulRevenue.map((x) => x.toString()).toList());
  }

  void removeFromCountDaySuccessfulRevenue(int value) {
    countDaySuccessfulRevenue.remove(value);
    prefs.setStringList('ff_countDaySuccessfulRevenue',
        _countDaySuccessfulRevenue.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromCountDaySuccessfulRevenue(int index) {
    countDaySuccessfulRevenue.removeAt(index);
    prefs.setStringList('ff_countDaySuccessfulRevenue',
        _countDaySuccessfulRevenue.map((x) => x.toString()).toList());
  }

  void updateCountDaySuccessfulRevenueAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    countDaySuccessfulRevenue[index] =
        updateFn(_countDaySuccessfulRevenue[index]);
    prefs.setStringList('ff_countDaySuccessfulRevenue',
        _countDaySuccessfulRevenue.map((x) => x.toString()).toList());
  }

  void insertAtIndexInCountDaySuccessfulRevenue(int index, int value) {
    countDaySuccessfulRevenue.insert(index, value);
    prefs.setStringList('ff_countDaySuccessfulRevenue',
        _countDaySuccessfulRevenue.map((x) => x.toString()).toList());
  }

  RecordStruct _recordQR = RecordStruct();
  RecordStruct get recordQR => _recordQR;
  set recordQR(RecordStruct value) {
    _recordQR = value;
  }

  void updateRecordQRStruct(Function(RecordStruct) updateFn) {
    updateFn(_recordQR);
  }

  String _month = '1';
  String get month => _month;
  set month(String value) {
    _month = value;
  }

  SalaryStruct _salary = SalaryStruct.fromSerializableMap(jsonDecode(
      '{\"baseSalary\":\"0\",\"patientsCount\":\"0\",\"totalSalary\":\"0\"}'));
  SalaryStruct get salary => _salary;
  set salary(SalaryStruct value) {
    _salary = value;
  }

  void updateSalaryStruct(Function(SalaryStruct) updateFn) {
    updateFn(_salary);
  }

  List<ScheduleStruct> _schedules = [];
  List<ScheduleStruct> get schedules => _schedules;
  set schedules(List<ScheduleStruct> value) {
    _schedules = value;
  }

  void addToSchedules(ScheduleStruct value) {
    schedules.add(value);
  }

  void removeFromSchedules(ScheduleStruct value) {
    schedules.remove(value);
  }

  void removeAtIndexFromSchedules(int index) {
    schedules.removeAt(index);
  }

  void updateSchedulesAtIndex(
    int index,
    ScheduleStruct Function(ScheduleStruct) updateFn,
  ) {
    schedules[index] = updateFn(_schedules[index]);
  }

  void insertAtIndexInSchedules(int index, ScheduleStruct value) {
    schedules.insert(index, value);
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
