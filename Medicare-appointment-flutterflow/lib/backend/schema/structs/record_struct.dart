// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecordStruct extends FFFirebaseStruct {
  RecordStruct({
    String? id,
    String? recordCode,
    String? reasonForVisit,
    String? diagnosis,
    String? examResult,
    bool? paid,
    PatientStruct? patient,
    ExamRoomStruct? examRoom,
    String? status,
    String? timeUntilAppointment,
    int? orderNumber,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _recordCode = recordCode,
        _reasonForVisit = reasonForVisit,
        _diagnosis = diagnosis,
        _examResult = examResult,
        _paid = paid,
        _patient = patient,
        _examRoom = examRoom,
        _status = status,
        _timeUntilAppointment = timeUntilAppointment,
        _orderNumber = orderNumber,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "recordCode" field.
  String? _recordCode;
  String get recordCode => _recordCode ?? '';
  set recordCode(String? val) => _recordCode = val;

  bool hasRecordCode() => _recordCode != null;

  // "reasonForVisit" field.
  String? _reasonForVisit;
  String get reasonForVisit => _reasonForVisit ?? '';
  set reasonForVisit(String? val) => _reasonForVisit = val;

  bool hasReasonForVisit() => _reasonForVisit != null;

  // "diagnosis" field.
  String? _diagnosis;
  String get diagnosis => _diagnosis ?? '';
  set diagnosis(String? val) => _diagnosis = val;

  bool hasDiagnosis() => _diagnosis != null;

  // "examResult" field.
  String? _examResult;
  String get examResult => _examResult ?? '';
  set examResult(String? val) => _examResult = val;

  bool hasExamResult() => _examResult != null;

  // "paid" field.
  bool? _paid;
  bool get paid => _paid ?? false;
  set paid(bool? val) => _paid = val;

  bool hasPaid() => _paid != null;

  // "patient" field.
  PatientStruct? _patient;
  PatientStruct get patient => _patient ?? PatientStruct();
  set patient(PatientStruct? val) => _patient = val;

  void updatePatient(Function(PatientStruct) updateFn) {
    updateFn(_patient ??= PatientStruct());
  }

  bool hasPatient() => _patient != null;

  // "examRoom" field.
  ExamRoomStruct? _examRoom;
  ExamRoomStruct get examRoom => _examRoom ?? ExamRoomStruct();
  set examRoom(ExamRoomStruct? val) => _examRoom = val;

  void updateExamRoom(Function(ExamRoomStruct) updateFn) {
    updateFn(_examRoom ??= ExamRoomStruct());
  }

  bool hasExamRoom() => _examRoom != null;

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "timeUntilAppointment" field.
  String? _timeUntilAppointment;
  String get timeUntilAppointment => _timeUntilAppointment ?? '';
  set timeUntilAppointment(String? val) => _timeUntilAppointment = val;

  bool hasTimeUntilAppointment() => _timeUntilAppointment != null;

  // "orderNumber" field.
  int? _orderNumber;
  int get orderNumber => _orderNumber ?? 0;
  set orderNumber(int? val) => _orderNumber = val;

  void incrementOrderNumber(int amount) => orderNumber = orderNumber + amount;

  bool hasOrderNumber() => _orderNumber != null;

  static RecordStruct fromMap(Map<String, dynamic> data) => RecordStruct(
        id: data['id'] as String?,
        recordCode: data['recordCode'] as String?,
        reasonForVisit: data['reasonForVisit'] as String?,
        diagnosis: data['diagnosis'] as String?,
        examResult: data['examResult'] as String?,
        paid: data['paid'] as bool?,
        patient: PatientStruct.maybeFromMap(data['patient']),
        examRoom: ExamRoomStruct.maybeFromMap(data['examRoom']),
        status: data['status'] as String?,
        timeUntilAppointment: data['timeUntilAppointment'] as String?,
        orderNumber: castToType<int>(data['orderNumber']),
      );

  static RecordStruct? maybeFromMap(dynamic data) =>
      data is Map ? RecordStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'recordCode': _recordCode,
        'reasonForVisit': _reasonForVisit,
        'diagnosis': _diagnosis,
        'examResult': _examResult,
        'paid': _paid,
        'patient': _patient?.toMap(),
        'examRoom': _examRoom?.toMap(),
        'status': _status,
        'timeUntilAppointment': _timeUntilAppointment,
        'orderNumber': _orderNumber,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'recordCode': serializeParam(
          _recordCode,
          ParamType.String,
        ),
        'reasonForVisit': serializeParam(
          _reasonForVisit,
          ParamType.String,
        ),
        'diagnosis': serializeParam(
          _diagnosis,
          ParamType.String,
        ),
        'examResult': serializeParam(
          _examResult,
          ParamType.String,
        ),
        'paid': serializeParam(
          _paid,
          ParamType.bool,
        ),
        'patient': serializeParam(
          _patient,
          ParamType.DataStruct,
        ),
        'examRoom': serializeParam(
          _examRoom,
          ParamType.DataStruct,
        ),
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'timeUntilAppointment': serializeParam(
          _timeUntilAppointment,
          ParamType.String,
        ),
        'orderNumber': serializeParam(
          _orderNumber,
          ParamType.int,
        ),
      }.withoutNulls;

  static RecordStruct fromSerializableMap(Map<String, dynamic> data) =>
      RecordStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        recordCode: deserializeParam(
          data['recordCode'],
          ParamType.String,
          false,
        ),
        reasonForVisit: deserializeParam(
          data['reasonForVisit'],
          ParamType.String,
          false,
        ),
        diagnosis: deserializeParam(
          data['diagnosis'],
          ParamType.String,
          false,
        ),
        examResult: deserializeParam(
          data['examResult'],
          ParamType.String,
          false,
        ),
        paid: deserializeParam(
          data['paid'],
          ParamType.bool,
          false,
        ),
        patient: deserializeStructParam(
          data['patient'],
          ParamType.DataStruct,
          false,
          structBuilder: PatientStruct.fromSerializableMap,
        ),
        examRoom: deserializeStructParam(
          data['examRoom'],
          ParamType.DataStruct,
          false,
          structBuilder: ExamRoomStruct.fromSerializableMap,
        ),
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        timeUntilAppointment: deserializeParam(
          data['timeUntilAppointment'],
          ParamType.String,
          false,
        ),
        orderNumber: deserializeParam(
          data['orderNumber'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'RecordStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RecordStruct &&
        id == other.id &&
        recordCode == other.recordCode &&
        reasonForVisit == other.reasonForVisit &&
        diagnosis == other.diagnosis &&
        examResult == other.examResult &&
        paid == other.paid &&
        patient == other.patient &&
        examRoom == other.examRoom &&
        status == other.status &&
        timeUntilAppointment == other.timeUntilAppointment &&
        orderNumber == other.orderNumber;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        recordCode,
        reasonForVisit,
        diagnosis,
        examResult,
        paid,
        patient,
        examRoom,
        status,
        timeUntilAppointment,
        orderNumber
      ]);
}

RecordStruct createRecordStruct({
  String? id,
  String? recordCode,
  String? reasonForVisit,
  String? diagnosis,
  String? examResult,
  bool? paid,
  PatientStruct? patient,
  ExamRoomStruct? examRoom,
  String? status,
  String? timeUntilAppointment,
  int? orderNumber,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RecordStruct(
      id: id,
      recordCode: recordCode,
      reasonForVisit: reasonForVisit,
      diagnosis: diagnosis,
      examResult: examResult,
      paid: paid,
      patient: patient ?? (clearUnsetFields ? PatientStruct() : null),
      examRoom: examRoom ?? (clearUnsetFields ? ExamRoomStruct() : null),
      status: status,
      timeUntilAppointment: timeUntilAppointment,
      orderNumber: orderNumber,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RecordStruct? updateRecordStruct(
  RecordStruct? record, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    record
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRecordStructData(
  Map<String, dynamic> firestoreData,
  RecordStruct? record,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (record == null) {
    return;
  }
  if (record.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && record.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final recordData = getRecordFirestoreData(record, forFieldValue);
  final nestedData = recordData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = record.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRecordFirestoreData(
  RecordStruct? record, [
  bool forFieldValue = false,
]) {
  if (record == null) {
    return {};
  }
  final firestoreData = mapToFirestore(record.toMap());

  // Handle nested data for "patient" field.
  addPatientStructData(
    firestoreData,
    record.hasPatient() ? record.patient : null,
    'patient',
    forFieldValue,
  );

  // Handle nested data for "examRoom" field.
  addExamRoomStructData(
    firestoreData,
    record.hasExamRoom() ? record.examRoom : null,
    'examRoom',
    forFieldValue,
  );

  // Add any Firestore field values
  record.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRecordListFirestoreData(
  List<RecordStruct>? records,
) =>
    records?.map((e) => getRecordFirestoreData(e, true)).toList() ?? [];
