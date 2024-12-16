// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends FFFirebaseStruct {
  UserStruct({
    String? id,
    String? username,
    String? email,
    String? password,
    String? phoneNumber,
    String? identifyCard,
    RoleStruct? role,
    String? status,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _username = username,
        _email = email,
        _password = password,
        _phoneNumber = phoneNumber,
        _identifyCard = identifyCard,
        _role = role,
        _status = status,
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

  // "role" field.
  RoleStruct? _role;
  RoleStruct get role => _role ?? RoleStruct();
  set role(RoleStruct? val) => _role = val;

  void updateRole(Function(RoleStruct) updateFn) {
    updateFn(_role ??= RoleStruct());
  }

  bool hasRole() => _role != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        id: data['id'] as String?,
        username: data['username'] as String?,
        email: data['email'] as String?,
        password: data['password'] as String?,
        phoneNumber: data['phoneNumber'] as String?,
        identifyCard: data['identifyCard'] as String?,
        role: RoleStruct.maybeFromMap(data['role']),
        status: data['status'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'username': _username,
        'email': _email,
        'password': _password,
        'phoneNumber': _phoneNumber,
        'identifyCard': _identifyCard,
        'role': _role?.toMap(),
        'status': _status,
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
        'role': serializeParam(
          _role,
          ParamType.DataStruct,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
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
        role: deserializeStructParam(
          data['role'],
          ParamType.DataStruct,
          false,
          structBuilder: RoleStruct.fromSerializableMap,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        id == other.id &&
        username == other.username &&
        email == other.email &&
        password == other.password &&
        phoneNumber == other.phoneNumber &&
        identifyCard == other.identifyCard &&
        role == other.role &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality().hash(
      [id, username, email, password, phoneNumber, identifyCard, role, status]);
}

UserStruct createUserStruct({
  String? id,
  String? username,
  String? email,
  String? password,
  String? phoneNumber,
  String? identifyCard,
  RoleStruct? role,
  String? status,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserStruct(
      id: id,
      username: username,
      email: email,
      password: password,
      phoneNumber: phoneNumber,
      identifyCard: identifyCard,
      role: role ?? (clearUnsetFields ? RoleStruct() : null),
      status: status,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserStruct? updateUserStruct(
  UserStruct? user, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    user
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserStructData(
  Map<String, dynamic> firestoreData,
  UserStruct? user,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (user == null) {
    return;
  }
  if (user.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && user.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userData = getUserFirestoreData(user, forFieldValue);
  final nestedData = userData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = user.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserFirestoreData(
  UserStruct? user, [
  bool forFieldValue = false,
]) {
  if (user == null) {
    return {};
  }
  final firestoreData = mapToFirestore(user.toMap());

  // Handle nested data for "role" field.
  addRoleStructData(
    firestoreData,
    user.hasRole() ? user.role : null,
    'role',
    forFieldValue,
  );

  // Add any Firestore field values
  user.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserListFirestoreData(
  List<UserStruct>? users,
) =>
    users?.map((e) => getUserFirestoreData(e, true)).toList() ?? [];
