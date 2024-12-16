// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DoctorStruct extends BaseStruct {
  DoctorStruct({
    String? id,
    String? type,
    UserStruct? user,
  })  : _id = id,
        _type = type,
        _user = user;

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
  UserStruct? _user;
  UserStruct get user => _user ?? UserStruct();
  set user(UserStruct? val) => _user = val;

  void updateUser(Function(UserStruct) updateFn) {
    updateFn(_user ??= UserStruct());
  }

  bool hasUser() => _user != null;

  static DoctorStruct fromMap(Map<String, dynamic> data) => DoctorStruct(
        id: data['id'] as String?,
        type: data['type'] as String?,
        user: UserStruct.maybeFromMap(data['user']),
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
          structBuilder: UserStruct.fromSerializableMap,
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
  UserStruct? user,
}) =>
    DoctorStruct(
      id: id,
      type: type,
      user: user ?? UserStruct(),
    );
