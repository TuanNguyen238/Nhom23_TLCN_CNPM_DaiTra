// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExamRoomStruct extends FFFirebaseStruct {
  ExamRoomStruct({
    String? id,
    String? examDate,
    String? examTime,
    int? roomNumber,
    int? maxPatients,
    int? currentPatients,
    DoctorStruct? doctor,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _examDate = examDate,
        _examTime = examTime,
        _roomNumber = roomNumber,
        _maxPatients = maxPatients,
        _currentPatients = currentPatients,
        _doctor = doctor,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "examDate" field.
  String? _examDate;
  String get examDate => _examDate ?? '';
  set examDate(String? val) => _examDate = val;

  bool hasExamDate() => _examDate != null;

  // "examTime" field.
  String? _examTime;
  String get examTime => _examTime ?? '';
  set examTime(String? val) => _examTime = val;

  bool hasExamTime() => _examTime != null;

  // "roomNumber" field.
  int? _roomNumber;
  int get roomNumber => _roomNumber ?? 0;
  set roomNumber(int? val) => _roomNumber = val;

  void incrementRoomNumber(int amount) => roomNumber = roomNumber + amount;

  bool hasRoomNumber() => _roomNumber != null;

  // "maxPatients" field.
  int? _maxPatients;
  int get maxPatients => _maxPatients ?? 0;
  set maxPatients(int? val) => _maxPatients = val;

  void incrementMaxPatients(int amount) => maxPatients = maxPatients + amount;

  bool hasMaxPatients() => _maxPatients != null;

  // "currentPatients" field.
  int? _currentPatients;
  int get currentPatients => _currentPatients ?? 0;
  set currentPatients(int? val) => _currentPatients = val;

  void incrementCurrentPatients(int amount) =>
      currentPatients = currentPatients + amount;

  bool hasCurrentPatients() => _currentPatients != null;

  // "doctor" field.
  DoctorStruct? _doctor;
  DoctorStruct get doctor => _doctor ?? DoctorStruct();
  set doctor(DoctorStruct? val) => _doctor = val;

  void updateDoctor(Function(DoctorStruct) updateFn) {
    updateFn(_doctor ??= DoctorStruct());
  }

  bool hasDoctor() => _doctor != null;

  static ExamRoomStruct fromMap(Map<String, dynamic> data) => ExamRoomStruct(
        id: data['id'] as String?,
        examDate: data['examDate'] as String?,
        examTime: data['examTime'] as String?,
        roomNumber: castToType<int>(data['roomNumber']),
        maxPatients: castToType<int>(data['maxPatients']),
        currentPatients: castToType<int>(data['currentPatients']),
        doctor: data['doctor'] is DoctorStruct
            ? data['doctor']
            : DoctorStruct.maybeFromMap(data['doctor']),
      );

  static ExamRoomStruct? maybeFromMap(dynamic data) =>
      data is Map ? ExamRoomStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'examDate': _examDate,
        'examTime': _examTime,
        'roomNumber': _roomNumber,
        'maxPatients': _maxPatients,
        'currentPatients': _currentPatients,
        'doctor': _doctor?.toMap(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'examDate': serializeParam(
          _examDate,
          ParamType.String,
        ),
        'examTime': serializeParam(
          _examTime,
          ParamType.String,
        ),
        'roomNumber': serializeParam(
          _roomNumber,
          ParamType.int,
        ),
        'maxPatients': serializeParam(
          _maxPatients,
          ParamType.int,
        ),
        'currentPatients': serializeParam(
          _currentPatients,
          ParamType.int,
        ),
        'doctor': serializeParam(
          _doctor,
          ParamType.DataStruct,
        ),
      }.withoutNulls;

  static ExamRoomStruct fromSerializableMap(Map<String, dynamic> data) =>
      ExamRoomStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        examDate: deserializeParam(
          data['examDate'],
          ParamType.String,
          false,
        ),
        examTime: deserializeParam(
          data['examTime'],
          ParamType.String,
          false,
        ),
        roomNumber: deserializeParam(
          data['roomNumber'],
          ParamType.int,
          false,
        ),
        maxPatients: deserializeParam(
          data['maxPatients'],
          ParamType.int,
          false,
        ),
        currentPatients: deserializeParam(
          data['currentPatients'],
          ParamType.int,
          false,
        ),
        doctor: deserializeStructParam(
          data['doctor'],
          ParamType.DataStruct,
          false,
          structBuilder: DoctorStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ExamRoomStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExamRoomStruct &&
        id == other.id &&
        examDate == other.examDate &&
        examTime == other.examTime &&
        roomNumber == other.roomNumber &&
        maxPatients == other.maxPatients &&
        currentPatients == other.currentPatients &&
        doctor == other.doctor;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        examDate,
        examTime,
        roomNumber,
        maxPatients,
        currentPatients,
        doctor
      ]);
}

ExamRoomStruct createExamRoomStruct({
  String? id,
  String? examDate,
  String? examTime,
  int? roomNumber,
  int? maxPatients,
  int? currentPatients,
  DoctorStruct? doctor,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ExamRoomStruct(
      id: id,
      examDate: examDate,
      examTime: examTime,
      roomNumber: roomNumber,
      maxPatients: maxPatients,
      currentPatients: currentPatients,
      doctor: doctor ?? (clearUnsetFields ? DoctorStruct() : null),
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ExamRoomStruct? updateExamRoomStruct(
  ExamRoomStruct? examRoom, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    examRoom
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addExamRoomStructData(
  Map<String, dynamic> firestoreData,
  ExamRoomStruct? examRoom,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (examRoom == null) {
    return;
  }
  if (examRoom.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && examRoom.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final examRoomData = getExamRoomFirestoreData(examRoom, forFieldValue);
  final nestedData = examRoomData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = examRoom.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getExamRoomFirestoreData(
  ExamRoomStruct? examRoom, [
  bool forFieldValue = false,
]) {
  if (examRoom == null) {
    return {};
  }
  final firestoreData = mapToFirestore(examRoom.toMap());

  // Handle nested data for "doctor" field.
  addDoctorStructData(
    firestoreData,
    examRoom.hasDoctor() ? examRoom.doctor : null,
    'doctor',
    forFieldValue,
  );

  // Add any Firestore field values
  examRoom.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getExamRoomListFirestoreData(
  List<ExamRoomStruct>? examRooms,
) =>
    examRooms?.map((e) => getExamRoomFirestoreData(e, true)).toList() ?? [];
