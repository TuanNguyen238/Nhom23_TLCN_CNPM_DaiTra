// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DosagesStruct extends BaseStruct {
  DosagesStruct({
    String? id,
    int? morning,
    int? afternoon,
    int? evening,
    int? days,
    MedicineStruct? medicine,
  })  : _id = id,
        _morning = morning,
        _afternoon = afternoon,
        _evening = evening,
        _days = days,
        _medicine = medicine;

  // "id" field.
  String? _id;
  String get id => _id ?? '0';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "morning" field.
  int? _morning;
  int get morning => _morning ?? 0;
  set morning(int? val) => _morning = val;

  void incrementMorning(int amount) => morning = morning + amount;

  bool hasMorning() => _morning != null;

  // "afternoon" field.
  int? _afternoon;
  int get afternoon => _afternoon ?? 0;
  set afternoon(int? val) => _afternoon = val;

  void incrementAfternoon(int amount) => afternoon = afternoon + amount;

  bool hasAfternoon() => _afternoon != null;

  // "evening" field.
  int? _evening;
  int get evening => _evening ?? 0;
  set evening(int? val) => _evening = val;

  void incrementEvening(int amount) => evening = evening + amount;

  bool hasEvening() => _evening != null;

  // "days" field.
  int? _days;
  int get days => _days ?? 0;
  set days(int? val) => _days = val;

  void incrementDays(int amount) => days = days + amount;

  bool hasDays() => _days != null;

  // "medicine" field.
  MedicineStruct? _medicine;
  MedicineStruct get medicine => _medicine ?? MedicineStruct();
  set medicine(MedicineStruct? val) => _medicine = val;

  void updateMedicine(Function(MedicineStruct) updateFn) {
    updateFn(_medicine ??= MedicineStruct());
  }

  bool hasMedicine() => _medicine != null;

  static DosagesStruct fromMap(Map<String, dynamic> data) => DosagesStruct(
        id: data['id'] as String?,
        morning: castToType<int>(data['morning']),
        afternoon: castToType<int>(data['afternoon']),
        evening: castToType<int>(data['evening']),
        days: castToType<int>(data['days']),
        medicine: MedicineStruct.maybeFromMap(data['medicine']),
      );

  static DosagesStruct? maybeFromMap(dynamic data) =>
      data is Map ? DosagesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'morning': _morning,
        'afternoon': _afternoon,
        'evening': _evening,
        'days': _days,
        'medicine': _medicine?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'morning': serializeParam(
          _morning,
          ParamType.int,
        ),
        'afternoon': serializeParam(
          _afternoon,
          ParamType.int,
        ),
        'evening': serializeParam(
          _evening,
          ParamType.int,
        ),
        'days': serializeParam(
          _days,
          ParamType.int,
        ),
        'medicine': serializeParam(
          _medicine,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static DosagesStruct fromSerializableMap(Map<String, dynamic> data) =>
      DosagesStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        morning: deserializeParam(
          data['morning'],
          ParamType.int,
          false,
        ),
        afternoon: deserializeParam(
          data['afternoon'],
          ParamType.int,
          false,
        ),
        evening: deserializeParam(
          data['evening'],
          ParamType.int,
          false,
        ),
        days: deserializeParam(
          data['days'],
          ParamType.int,
          false,
        ),
        medicine: deserializeStructParam(
          data['medicine'],
          ParamType.DataStruct,
          false,
          structBuilder: MedicineStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'DosagesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DosagesStruct &&
        id == other.id &&
        morning == other.morning &&
        afternoon == other.afternoon &&
        evening == other.evening &&
        days == other.days &&
        medicine == other.medicine;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, morning, afternoon, evening, days, medicine]);
}

DosagesStruct createDosagesStruct({
  String? id,
  int? morning,
  int? afternoon,
  int? evening,
  int? days,
  MedicineStruct? medicine,
}) =>
    DosagesStruct(
      id: id,
      morning: morning,
      afternoon: afternoon,
      evening: evening,
      days: days,
      medicine: medicine ?? MedicineStruct(),
    );
