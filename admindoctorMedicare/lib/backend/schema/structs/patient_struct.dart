// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PatientStruct extends BaseStruct {
  PatientStruct({
    String? id,
    String? patientCode,
    String? fullName,
    String? phoneNumber,
    String? address,
    String? identifyCard,
    String? dateOfBirth,
    String? gender,
    String? status,
  })  : _id = id,
        _patientCode = patientCode,
        _fullName = fullName,
        _phoneNumber = phoneNumber,
        _address = address,
        _identifyCard = identifyCard,
        _dateOfBirth = dateOfBirth,
        _gender = gender,
        _status = status;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "patientCode" field.
  String? _patientCode;
  String get patientCode => _patientCode ?? '';
  set patientCode(String? val) => _patientCode = val;

  bool hasPatientCode() => _patientCode != null;

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

  // "identifyCard" field.
  String? _identifyCard;
  String get identifyCard => _identifyCard ?? '';
  set identifyCard(String? val) => _identifyCard = val;

  bool hasIdentifyCard() => _identifyCard != null;

  // "dateOfBirth" field.
  String? _dateOfBirth;
  String get dateOfBirth => _dateOfBirth ?? '';
  set dateOfBirth(String? val) => _dateOfBirth = val;

  bool hasDateOfBirth() => _dateOfBirth != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;

  bool hasGender() => _gender != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  static PatientStruct fromMap(Map<String, dynamic> data) => PatientStruct(
        id: data['id'] as String?,
        patientCode: data['patientCode'] as String?,
        fullName: data['fullName'] as String?,
        phoneNumber: data['phoneNumber'] as String?,
        address: data['address'] as String?,
        identifyCard: data['identifyCard'] as String?,
        dateOfBirth: data['dateOfBirth'] as String?,
        gender: data['gender'] as String?,
        status: data['status'] as String?,
      );

  static PatientStruct? maybeFromMap(dynamic data) =>
      data is Map ? PatientStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'patientCode': _patientCode,
        'fullName': _fullName,
        'phoneNumber': _phoneNumber,
        'address': _address,
        'identifyCard': _identifyCard,
        'dateOfBirth': _dateOfBirth,
        'gender': _gender,
        'status': _status,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'patientCode': serializeParam(
          _patientCode,
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
        'identifyCard': serializeParam(
          _identifyCard,
          ParamType.String,
        ),
        'dateOfBirth': serializeParam(
          _dateOfBirth,
          ParamType.String,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
      }.withoutNulls;

  static PatientStruct fromSerializableMap(Map<String, dynamic> data) =>
      PatientStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        patientCode: deserializeParam(
          data['patientCode'],
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
        identifyCard: deserializeParam(
          data['identifyCard'],
          ParamType.String,
          false,
        ),
        dateOfBirth: deserializeParam(
          data['dateOfBirth'],
          ParamType.String,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'PatientStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is PatientStruct &&
        id == other.id &&
        patientCode == other.patientCode &&
        fullName == other.fullName &&
        phoneNumber == other.phoneNumber &&
        address == other.address &&
        identifyCard == other.identifyCard &&
        dateOfBirth == other.dateOfBirth &&
        gender == other.gender &&
        status == other.status;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        patientCode,
        fullName,
        phoneNumber,
        address,
        identifyCard,
        dateOfBirth,
        gender,
        status
      ]);
}

PatientStruct createPatientStruct({
  String? id,
  String? patientCode,
  String? fullName,
  String? phoneNumber,
  String? address,
  String? identifyCard,
  String? dateOfBirth,
  String? gender,
  String? status,
}) =>
    PatientStruct(
      id: id,
      patientCode: patientCode,
      fullName: fullName,
      phoneNumber: phoneNumber,
      address: address,
      identifyCard: identifyCard,
      dateOfBirth: dateOfBirth,
      gender: gender,
      status: status,
    );
