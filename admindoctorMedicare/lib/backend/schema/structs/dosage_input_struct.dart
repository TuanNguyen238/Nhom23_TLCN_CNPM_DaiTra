// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DosageInputStruct extends BaseStruct {
  DosageInputStruct({
    String? medicineId,
    String? morning,
    String? afternoon,
    String? evening,
    String? days,
  })  : _medicineId = medicineId,
        _morning = morning,
        _afternoon = afternoon,
        _evening = evening,
        _days = days;

  // "medicineId" field.
  String? _medicineId;
  String get medicineId => _medicineId ?? '';
  set medicineId(String? val) => _medicineId = val;

  bool hasMedicineId() => _medicineId != null;

  // "morning" field.
  String? _morning;
  String get morning => _morning ?? '';
  set morning(String? val) => _morning = val;

  bool hasMorning() => _morning != null;

  // "afternoon" field.
  String? _afternoon;
  String get afternoon => _afternoon ?? '';
  set afternoon(String? val) => _afternoon = val;

  bool hasAfternoon() => _afternoon != null;

  // "evening" field.
  String? _evening;
  String get evening => _evening ?? '';
  set evening(String? val) => _evening = val;

  bool hasEvening() => _evening != null;

  // "days" field.
  String? _days;
  String get days => _days ?? '';
  set days(String? val) => _days = val;

  bool hasDays() => _days != null;

  static DosageInputStruct fromMap(Map<String, dynamic> data) =>
      DosageInputStruct(
        medicineId: data['medicineId'] as String?,
        morning: data['morning'] as String?,
        afternoon: data['afternoon'] as String?,
        evening: data['evening'] as String?,
        days: data['days'] as String?,
      );

  static DosageInputStruct? maybeFromMap(dynamic data) => data is Map
      ? DosageInputStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'medicineId': _medicineId,
        'morning': _morning,
        'afternoon': _afternoon,
        'evening': _evening,
        'days': _days,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'medicineId': serializeParam(
          _medicineId,
          ParamType.String,
        ),
        'morning': serializeParam(
          _morning,
          ParamType.String,
        ),
        'afternoon': serializeParam(
          _afternoon,
          ParamType.String,
        ),
        'evening': serializeParam(
          _evening,
          ParamType.String,
        ),
        'days': serializeParam(
          _days,
          ParamType.String,
        ),
      }.withoutNulls;

  static DosageInputStruct fromSerializableMap(Map<String, dynamic> data) =>
      DosageInputStruct(
        medicineId: deserializeParam(
          data['medicineId'],
          ParamType.String,
          false,
        ),
        morning: deserializeParam(
          data['morning'],
          ParamType.String,
          false,
        ),
        afternoon: deserializeParam(
          data['afternoon'],
          ParamType.String,
          false,
        ),
        evening: deserializeParam(
          data['evening'],
          ParamType.String,
          false,
        ),
        days: deserializeParam(
          data['days'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DosageInputStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DosageInputStruct &&
        medicineId == other.medicineId &&
        morning == other.morning &&
        afternoon == other.afternoon &&
        evening == other.evening &&
        days == other.days;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([medicineId, morning, afternoon, evening, days]);
}

DosageInputStruct createDosageInputStruct({
  String? medicineId,
  String? morning,
  String? afternoon,
  String? evening,
  String? days,
}) =>
    DosageInputStruct(
      medicineId: medicineId,
      morning: morning,
      afternoon: afternoon,
      evening: evening,
      days: days,
    );
