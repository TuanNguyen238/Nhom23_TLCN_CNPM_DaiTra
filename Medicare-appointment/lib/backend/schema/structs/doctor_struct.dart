// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DoctorStruct extends FFFirebaseStruct {
  DoctorStruct({
    String? id,
    String? type,
    UserdoctorStruct? user,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _type = type,
        _user = user,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "user" field.
  UserdoctorStruct? _user;
  UserdoctorStruct get user => _user ?? UserdoctorStruct();
  set user(UserdoctorStruct? val) => _user = val;

  void updateUser(Function(UserdoctorStruct) updateFn) {
    updateFn(_user ??= UserdoctorStruct());
  }

  bool hasUser() => _user != null;

  static DoctorStruct fromMap(Map<String, dynamic> data) => DoctorStruct(
        id: data['id'] as String?,
        type: data['type'] as String?,
        user: UserdoctorStruct.maybeFromMap(data['user']),
      );

  static DoctorStruct? maybeFromMap(dynamic data) =>
      data is Map ? DoctorStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'type': _type,
        'user': _user?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'user': serializeParam(
          _user,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static DoctorStruct fromSerializableMap(Map<String, dynamic> data) =>
      DoctorStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        user: deserializeStructParam(
          data['user'],
          ParamType.DataStruct,
          false,
          structBuilder: UserdoctorStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'DoctorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DoctorStruct &&
        id == other.id &&
        type == other.type &&
        user == other.user;
  }

  @override
  int get hashCode => const ListEquality().hash([id, type, user]);
}

DoctorStruct createDoctorStruct({
  String? id,
  String? type,
  UserdoctorStruct? user,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DoctorStruct(
      id: id,
      type: type,
      user: user ?? (clearUnsetFields ? UserdoctorStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DoctorStruct? updateDoctorStruct(
  DoctorStruct? doctor, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    doctor
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDoctorStructData(
  Map<String, dynamic> firestoreData,
  DoctorStruct? doctor,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (doctor == null) {
    return;
  }
  if (doctor.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && doctor.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final doctorData = getDoctorFirestoreData(doctor, forFieldValue);
  final nestedData = doctorData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = doctor.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDoctorFirestoreData(
  DoctorStruct? doctor, [
  bool forFieldValue = false,
]) {
  if (doctor == null) {
    return {};
  }
  final firestoreData = mapToFirestore(doctor.toMap());

  // Handle nested data for "user" field.
  addUserdoctorStructData(
    firestoreData,
    doctor.hasUser() ? doctor.user : null,
    'user',
    forFieldValue,
  );

  // Add any Firestore field values
  doctor.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDoctorListFirestoreData(
  List<DoctorStruct>? doctors,
) =>
    doctors?.map((e) => getDoctorFirestoreData(e, true)).toList() ?? [];
