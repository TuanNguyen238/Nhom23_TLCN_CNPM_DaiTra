// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ScheduleStruct extends BaseStruct {
  ScheduleStruct({
    String? time,
    int? roomNumber,
    int? maxPatients,
    int? currentPatients,
  })  : _time = time,
        _roomNumber = roomNumber,
        _maxPatients = maxPatients,
        _currentPatients = currentPatients;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  set time(String? val) => _time = val;

  bool hasTime() => _time != null;

  // "roomNumber" field.
  int? _roomNumber;
  int get roomNumber => _roomNumber ?? 0;
  set roomNumber(int? val) => _roomNumber = val;

  void incrementRoomNumber(int amount) => roomNumber = roomNumber + amount;

  bool hasRoomNumber() => _roomNumber != null;

  // "maxPatients" field.
  int? _maxPatients;
  int get maxPatients => _maxPatients ?? 0;
  set maxPatients(int? val) => _maxPatients = val;

  void incrementMaxPatients(int amount) => maxPatients = maxPatients + amount;

  bool hasMaxPatients() => _maxPatients != null;

  // "currentPatients" field.
  int? _currentPatients;
  int get currentPatients => _currentPatients ?? 0;
  set currentPatients(int? val) => _currentPatients = val;

  void incrementCurrentPatients(int amount) =>
      currentPatients = currentPatients + amount;

  bool hasCurrentPatients() => _currentPatients != null;

  static ScheduleStruct fromMap(Map<String, dynamic> data) => ScheduleStruct(
        time: data['time'] as String?,
        roomNumber: castToType<int>(data['roomNumber']),
        maxPatients: castToType<int>(data['maxPatients']),
        currentPatients: castToType<int>(data['currentPatients']),
      );

  static ScheduleStruct? maybeFromMap(dynamic data) =>
      data is Map ? ScheduleStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'time': _time,
        'roomNumber': _roomNumber,
        'maxPatients': _maxPatients,
        'currentPatients': _currentPatients,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'time': serializeParam(
          _time,
          ParamType.String,
        ),
        'roomNumber': serializeParam(
          _roomNumber,
          ParamType.int,
        ),
        'maxPatients': serializeParam(
          _maxPatients,
          ParamType.int,
        ),
        'currentPatients': serializeParam(
          _currentPatients,
          ParamType.int,
        ),
      }.withoutNulls;

  static ScheduleStruct fromSerializableMap(Map<String, dynamic> data) =>
      ScheduleStruct(
        time: deserializeParam(
          data['time'],
          ParamType.String,
          false,
        ),
        roomNumber: deserializeParam(
          data['roomNumber'],
          ParamType.int,
          false,
        ),
        maxPatients: deserializeParam(
          data['maxPatients'],
          ParamType.int,
          false,
        ),
        currentPatients: deserializeParam(
          data['currentPatients'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ScheduleStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ScheduleStruct &&
        time == other.time &&
        roomNumber == other.roomNumber &&
        maxPatients == other.maxPatients &&
        currentPatients == other.currentPatients;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([time, roomNumber, maxPatients, currentPatients]);
}

ScheduleStruct createScheduleStruct({
  String? time,
  int? roomNumber,
  int? maxPatients,
  int? currentPatients,
}) =>
    ScheduleStruct(
      time: time,
      roomNumber: roomNumber,
      maxPatients: maxPatients,
      currentPatients: currentPatients,
    );
