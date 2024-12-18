// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class UserdoctorStruct extends FFFirebaseStruct {
  UserdoctorStruct({
    String? id,
    String? username,
    String? email,
    String? password,
    String? phoneNumber,
    String? identifyCard,
    String? status,
    String? createdAt,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _username = username,
        _email = email,
        _password = password,
        _phoneNumber = phoneNumber,
        _identifyCard = identifyCard,
        _status = status,
        _createdAt = createdAt,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "username" field.
  String? _username;
  String get username => _username ?? '';
  set username(String? val) => _username = val;

  bool hasUsername() => _username != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  set email(String? val) => _email = val;

  bool hasEmail() => _email != null;

  // "password" field.
  String? _password;
  String get password => _password ?? '';
  set password(String? val) => _password = val;

  bool hasPassword() => _password != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  set phoneNumber(String? val) => _phoneNumber = val;

  bool hasPhoneNumber() => _phoneNumber != null;

  // "identifyCard" field.
  String? _identifyCard;
  String get identifyCard => _identifyCard ?? '';
  set identifyCard(String? val) => _identifyCard = val;

  bool hasIdentifyCard() => _identifyCard != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  static UserdoctorStruct fromMap(Map<String, dynamic> data) =>
      UserdoctorStruct(
        id: data['id'] as String?,
        username: data['username'] as String?,
        email: data['email'] as String?,
        password: data['password'] as String?,
        phoneNumber: data['phoneNumber'] as String?,
        identifyCard: data['identifyCard'] as String?,
        status: data['status'] as String?,
        createdAt: data['createdAt'] as String?,
      );

  static UserdoctorStruct? maybeFromMap(dynamic data) => data is Map
      ? UserdoctorStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'username': _username,
        'email': _email,
        'password': _password,
        'phoneNumber': _phoneNumber,
        'identifyCard': _identifyCard,
        'status': _status,
        'createdAt': _createdAt,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'username': serializeParam(
          _username,
          ParamType.String,
        ),
        'email': serializeParam(
          _email,
          ParamType.String,
        ),
        'password': serializeParam(
          _password,
          ParamType.String,
        ),
        'phoneNumber': serializeParam(
          _phoneNumber,
          ParamType.String,
        ),
        'identifyCard': serializeParam(
          _identifyCard,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserdoctorStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserdoctorStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        username: deserializeParam(
          data['username'],
          ParamType.String,
          false,
        ),
        email: deserializeParam(
          data['email'],
          ParamType.String,
          false,
        ),
        password: deserializeParam(
          data['password'],
          ParamType.String,
          false,
        ),
        phoneNumber: deserializeParam(
          data['phoneNumber'],
          ParamType.String,
          false,
        ),
        identifyCard: deserializeParam(
          data['identifyCard'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserdoctorStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserdoctorStruct &&
        id == other.id &&
        username == other.username &&
        email == other.email &&
        password == other.password &&
        phoneNumber == other.phoneNumber &&
        identifyCard == other.identifyCard &&
        status == other.status &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        username,
        email,
        password,
        phoneNumber,
        identifyCard,
        status,
        createdAt
      ]);
}

UserdoctorStruct createUserdoctorStruct({
  String? id,
  String? username,
  String? email,
  String? password,
  String? phoneNumber,
  String? identifyCard,
  String? status,
  String? createdAt,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserdoctorStruct(
      id: id,
      username: username,
      email: email,
      password: password,
      phoneNumber: phoneNumber,
      identifyCard: identifyCard,
      status: status,
      createdAt: createdAt,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserdoctorStruct? updateUserdoctorStruct(
  UserdoctorStruct? userdoctor, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    userdoctor
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserdoctorStructData(
  Map<String, dynamic> firestoreData,
  UserdoctorStruct? userdoctor,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (userdoctor == null) {
    return;
  }
  if (userdoctor.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && userdoctor.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userdoctorData = getUserdoctorFirestoreData(userdoctor, forFieldValue);
  final nestedData = userdoctorData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = userdoctor.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserdoctorFirestoreData(
  UserdoctorStruct? userdoctor, [
  bool forFieldValue = false,
]) {
  if (userdoctor == null) {
    return {};
  }
  final firestoreData = mapToFirestore(userdoctor.toMap());

  // Add any Firestore field values
  userdoctor.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserdoctorListFirestoreData(
  List<UserdoctorStruct>? userdoctors,
) =>
    userdoctors?.map((e) => getUserdoctorFirestoreData(e, true)).toList() ?? [];
