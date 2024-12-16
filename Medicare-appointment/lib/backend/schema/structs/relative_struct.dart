// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class RelativeStruct extends FFFirebaseStruct {
  RelativeStruct({
    String? id,
    String? fullName,
    String? phoneNumber,
    String? address,
    String? relations,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _fullName = fullName,
        _phoneNumber = phoneNumber,
        _address = address,
        _relations = relations,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "fullName" field.
  String? _fullName;
  String get fullName => _fullName ?? '';
  set fullName(String? val) => _fullName = val;

  bool hasFullName() => _fullName != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;

  bool hasPhoneNumber() => _phoneNumber != null;

  // "address" field.
  String? _address;
  String get address => _address ?? '';
  set address(String? val) => _address = val;

  bool hasAddress() => _address != null;

  // "relations" field.
  String? _relations;
  String get relations => _relations ?? '';
  set relations(String? val) => _relations = val;

  bool hasRelations() => _relations != null;

  static RelativeStruct fromMap(Map<String, dynamic> data) => RelativeStruct(
        id: data['id'] as String?,
        fullName: data['fullName'] as String?,
        phoneNumber: data['phoneNumber'] as String?,
        address: data['address'] as String?,
        relations: data['relations'] as String?,
      );

  static RelativeStruct? maybeFromMap(dynamic data) =>
      data is Map ? RelativeStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'fullName': _fullName,
        'phoneNumber': _phoneNumber,
        'address': _address,
        'relations': _relations,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'fullName': serializeParam(
          _fullName,
          ParamType.String,
        ),
        'phoneNumber': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
        'address': serializeParam(
          _address,
          ParamType.String,
        ),
        'relations': serializeParam(
          _relations,
          ParamType.String,
        ),
      }.withoutNulls;

  static RelativeStruct fromSerializableMap(Map<String, dynamic> data) =>
      RelativeStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        fullName: deserializeParam(
          data['fullName'],
          ParamType.String,
          false,
        ),
        phoneNumber: deserializeParam(
          data['phoneNumber'],
          ParamType.String,
          false,
        ),
        address: deserializeParam(
          data['address'],
          ParamType.String,
          false,
        ),
        relations: deserializeParam(
          data['relations'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'RelativeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RelativeStruct &&
        id == other.id &&
        fullName == other.fullName &&
        phoneNumber == other.phoneNumber &&
        address == other.address &&
        relations == other.relations;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, fullName, phoneNumber, address, relations]);
}

RelativeStruct createRelativeStruct({
  String? id,
  String? fullName,
  String? phoneNumber,
  String? address,
  String? relations,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RelativeStruct(
      id: id,
      fullName: fullName,
      phoneNumber: phoneNumber,
      address: address,
      relations: relations,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RelativeStruct? updateRelativeStruct(
  RelativeStruct? relative, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    relative
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRelativeStructData(
  Map<String, dynamic> firestoreData,
  RelativeStruct? relative,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (relative == null) {
    return;
  }
  if (relative.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && relative.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final relativeData = getRelativeFirestoreData(relative, forFieldValue);
  final nestedData = relativeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = relative.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRelativeFirestoreData(
  RelativeStruct? relative, [
  bool forFieldValue = false,
]) {
  if (relative == null) {
    return {};
  }
  final firestoreData = mapToFirestore(relative.toMap());

  // Add any Firestore field values
  relative.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRelativeListFirestoreData(
  List<RelativeStruct>? relatives,
) =>
    relatives?.map((e) => getRelativeFirestoreData(e, true)).toList() ?? [];
