// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class RoleStruct extends FFFirebaseStruct {
  RoleStruct({
    String? name,
    String? description,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _description = description,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;

  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;

  bool hasDescription() => _description != null;

  static RoleStruct fromMap(Map<String, dynamic> data) => RoleStruct(
        name: data['name'] as String?,
        description: data['description'] as String?,
      );

  static RoleStruct? maybeFromMap(dynamic data) =>
      data is Map ? RoleStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'description': _description,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
      }.withoutNulls;

  static RoleStruct fromSerializableMap(Map<String, dynamic> data) =>
      RoleStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RoleStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RoleStruct &&
        name == other.name &&
        description == other.description;
  }

  @override
  int get hashCode => const ListEquality().hash([name, description]);
}

RoleStruct createRoleStruct({
  String? name,
  String? description,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RoleStruct(
      name: name,
      description: description,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RoleStruct? updateRoleStruct(
  RoleStruct? role, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    role
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRoleStructData(
  Map<String, dynamic> firestoreData,
  RoleStruct? role,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (role == null) {
    return;
  }
  if (role.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && role.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final roleData = getRoleFirestoreData(role, forFieldValue);
  final nestedData = roleData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = role.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRoleFirestoreData(
  RoleStruct? role, [
  bool forFieldValue = false,
]) {
  if (role == null) {
    return {};
  }
  final firestoreData = mapToFirestore(role.toMap());

  // Add any Firestore field values
  role.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRoleListFirestoreData(
  List<RoleStruct>? roles,
) =>
    roles?.map((e) => getRoleFirestoreData(e, true)).toList() ?? [];
