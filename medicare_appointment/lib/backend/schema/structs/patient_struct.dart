// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PatientStruct extends FFFirebaseStruct {
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
    RelativeStruct? relative,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _patientCode = patientCode,
        _fullName = fullName,
        _phoneNumber = phoneNumber,
        _address = address,
        _identifyCard = identifyCard,
        _dateOfBirth = dateOfBirth,
        _gender = gender,
        _status = status,
        _relative = relative,
        super(firestoreUtilData);

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

  // "relative" field.
  RelativeStruct? _relative;
  RelativeStruct get relative => _relative ?? RelativeStruct();
  set relative(RelativeStruct? val) => _relative = val;

  void updateRelative(Function(RelativeStruct) updateFn) {
    updateFn(_relative ??= RelativeStruct());
  }

  bool hasRelative() => _relative != null;

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
        relative: data['relative'] is RelativeStruct
            ? data['relative']
            : RelativeStruct.maybeFromMap(data['relative']),
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
        'relative': _relative?.toMap(),
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
        'relative': serializeParam(
          _relative,
          ParamType.DataStruct,
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
        relative: deserializeStructParam(
          data['relative'],
          ParamType.DataStruct,
          false,
          structBuilder: RelativeStruct.fromSerializableMap,
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
        status == other.status &&
        relative == other.relative;
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
        status,
        relative
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
  RelativeStruct? relative,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
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
      relative: relative ?? (clearUnsetFields ? RelativeStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PatientStruct? updatePatientStruct(
  PatientStruct? patient, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    patient
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPatientStructData(
  Map<String, dynamic> firestoreData,
  PatientStruct? patient,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (patient == null) {
    return;
  }
  if (patient.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && patient.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final patientData = getPatientFirestoreData(patient, forFieldValue);
  final nestedData = patientData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = patient.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPatientFirestoreData(
  PatientStruct? patient, [
  bool forFieldValue = false,
]) {
  if (patient == null) {
    return {};
  }
  final firestoreData = mapToFirestore(patient.toMap());

  // Handle nested data for "relative" field.
  addRelativeStructData(
    firestoreData,
    patient.hasRelative() ? patient.relative : null,
    'relative',
    forFieldValue,
  );

  // Add any Firestore field values
  patient.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPatientListFirestoreData(
  List<PatientStruct>? patients,
) =>
    patients?.map((e) => getPatientFirestoreData(e, true)).toList() ?? [];
