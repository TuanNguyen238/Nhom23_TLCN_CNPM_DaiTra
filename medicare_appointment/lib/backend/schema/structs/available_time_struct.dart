// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class AvailableTimeStruct extends FFFirebaseStruct {
  AvailableTimeStruct({
    String? time,
    int? count,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _time = time,
        _count = count,
        super(firestoreUtilData);

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  set time(String? val) => _time = val;

  bool hasTime() => _time != null;

  // "count" field.
  int? _count;
  int get count => _count ?? 0;
  set count(int? val) => _count = val;

  void incrementCount(int amount) => count = count + amount;

  bool hasCount() => _count != null;

  static AvailableTimeStruct fromMap(Map<String, dynamic> data) =>
      AvailableTimeStruct(
        time: data['time'] as String?,
        count: castToType<int>(data['count']),
      );

  static AvailableTimeStruct? maybeFromMap(dynamic data) => data is Map
      ? AvailableTimeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'time': _time,
        'count': _count,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'time': serializeParam(
          _time,
          ParamType.String,
        ),
        'count': serializeParam(
          _count,
          ParamType.int,
        ),
      }.withoutNulls;

  static AvailableTimeStruct fromSerializableMap(Map<String, dynamic> data) =>
      AvailableTimeStruct(
        time: deserializeParam(
          data['time'],
          ParamType.String,
          false,
        ),
        count: deserializeParam(
          data['count'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'AvailableTimeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is AvailableTimeStruct &&
        time == other.time &&
        count == other.count;
  }

  @override
  int get hashCode => const ListEquality().hash([time, count]);
}

AvailableTimeStruct createAvailableTimeStruct({
  String? time,
  int? count,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    AvailableTimeStruct(
      time: time,
      count: count,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

AvailableTimeStruct? updateAvailableTimeStruct(
  AvailableTimeStruct? availableTime, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    availableTime
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addAvailableTimeStructData(
  Map<String, dynamic> firestoreData,
  AvailableTimeStruct? availableTime,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (availableTime == null) {
    return;
  }
  if (availableTime.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && availableTime.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final availableTimeData =
      getAvailableTimeFirestoreData(availableTime, forFieldValue);
  final nestedData =
      availableTimeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = availableTime.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getAvailableTimeFirestoreData(
  AvailableTimeStruct? availableTime, [
  bool forFieldValue = false,
]) {
  if (availableTime == null) {
    return {};
  }
  final firestoreData = mapToFirestore(availableTime.toMap());

  // Add any Firestore field values
  availableTime.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getAvailableTimeListFirestoreData(
  List<AvailableTimeStruct>? availableTimes,
) =>
    availableTimes
        ?.map((e) => getAvailableTimeFirestoreData(e, true))
        .toList() ??
    [];
