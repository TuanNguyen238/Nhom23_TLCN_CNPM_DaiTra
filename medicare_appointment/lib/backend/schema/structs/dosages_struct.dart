// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DosagesStruct extends FFFirebaseStruct {
  DosagesStruct({
    String? id,
    int? morning,
    int? afternoon,
    int? evening,
    MedicineStruct? medicine,
    int? days,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _morning = morning,
        _afternoon = afternoon,
        _evening = evening,
        _medicine = medicine,
        _days = days,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
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

  // "medicine" field.
  MedicineStruct? _medicine;
  MedicineStruct get medicine => _medicine ?? MedicineStruct();
  set medicine(MedicineStruct? val) => _medicine = val;

  void updateMedicine(Function(MedicineStruct) updateFn) {
    updateFn(_medicine ??= MedicineStruct());
  }

  bool hasMedicine() => _medicine != null;

  // "days" field.
  int? _days;
  int get days => _days ?? 0;
  set days(int? val) => _days = val;

  void incrementDays(int amount) => days = days + amount;

  bool hasDays() => _days != null;

  static DosagesStruct fromMap(Map<String, dynamic> data) => DosagesStruct(
        id: data['id'] as String?,
        morning: castToType<int>(data['morning']),
        afternoon: castToType<int>(data['afternoon']),
        evening: castToType<int>(data['evening']),
        medicine: data['medicine'] is MedicineStruct
            ? data['medicine']
            : MedicineStruct.maybeFromMap(data['medicine']),
        days: castToType<int>(data['days']),
      );

  static DosagesStruct? maybeFromMap(dynamic data) =>
      data is Map ? DosagesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'morning': _morning,
        'afternoon': _afternoon,
        'evening': _evening,
        'medicine': _medicine?.toMap(),
        'days': _days,
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
        'medicine': serializeParam(
          _medicine,
          ParamType.DataStruct,
        ),
        'days': serializeParam(
          _days,
          ParamType.int,
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
        medicine: deserializeStructParam(
          data['medicine'],
          ParamType.DataStruct,
          false,
          structBuilder: MedicineStruct.fromSerializableMap,
        ),
        days: deserializeParam(
          data['days'],
          ParamType.int,
          false,
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
        medicine == other.medicine &&
        days == other.days;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, morning, afternoon, evening, medicine, days]);
}

DosagesStruct createDosagesStruct({
  String? id,
  int? morning,
  int? afternoon,
  int? evening,
  MedicineStruct? medicine,
  int? days,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DosagesStruct(
      id: id,
      morning: morning,
      afternoon: afternoon,
      evening: evening,
      medicine: medicine ?? (clearUnsetFields ? MedicineStruct() : null),
      days: days,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DosagesStruct? updateDosagesStruct(
  DosagesStruct? dosages, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dosages
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDosagesStructData(
  Map<String, dynamic> firestoreData,
  DosagesStruct? dosages,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dosages == null) {
    return;
  }
  if (dosages.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dosages.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dosagesData = getDosagesFirestoreData(dosages, forFieldValue);
  final nestedData = dosagesData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dosages.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDosagesFirestoreData(
  DosagesStruct? dosages, [
  bool forFieldValue = false,
]) {
  if (dosages == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dosages.toMap());

  // Handle nested data for "medicine" field.
  addMedicineStructData(
    firestoreData,
    dosages.hasMedicine() ? dosages.medicine : null,
    'medicine',
    forFieldValue,
  );

  // Add any Firestore field values
  dosages.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDosagesListFirestoreData(
  List<DosagesStruct>? dosagess,
) =>
    dosagess?.map((e) => getDosagesFirestoreData(e, true)).toList() ?? [];
