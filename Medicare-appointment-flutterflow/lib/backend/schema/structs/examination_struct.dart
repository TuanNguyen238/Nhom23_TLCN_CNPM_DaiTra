// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExaminationStruct extends FFFirebaseStruct {
  ExaminationStruct({
    String? id,
    String? recordCode,
    String? reasonForVisit,
    String? diagnosis,
    String? examResult,
    bool? paid,
    PatientStruct? patient,
    PrescriptionStruct? prescription,
    DetailedRecordStruct? detailedRecord,
    ExamRoomStruct? examRoom,
    String? status,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _recordCode = recordCode,
        _reasonForVisit = reasonForVisit,
        _diagnosis = diagnosis,
        _examResult = examResult,
        _paid = paid,
        _patient = patient,
        _prescription = prescription,
        _detailedRecord = detailedRecord,
        _examRoom = examRoom,
        _status = status,
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

  // "prescription" field.
  PrescriptionStruct? _prescription;
  PrescriptionStruct get prescription => _prescription ?? PrescriptionStruct();
  set prescription(PrescriptionStruct? val) => _prescription = val;

  void updatePrescription(Function(PrescriptionStruct) updateFn) {
    updateFn(_prescription ??= PrescriptionStruct());
  }

  bool hasPrescription() => _prescription != null;

  // "detailedRecord" field.
  DetailedRecordStruct? _detailedRecord;
  DetailedRecordStruct get detailedRecord =>
      _detailedRecord ?? DetailedRecordStruct();
  set detailedRecord(DetailedRecordStruct? val) => _detailedRecord = val;

  void updateDetailedRecord(Function(DetailedRecordStruct) updateFn) {
    updateFn(_detailedRecord ??= DetailedRecordStruct());
  }

  bool hasDetailedRecord() => _detailedRecord != null;

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

  static ExaminationStruct fromMap(Map<String, dynamic> data) =>
      ExaminationStruct(
        id: data['id'] as String?,
        recordCode: data['recordCode'] as String?,
        reasonForVisit: data['reasonForVisit'] as String?,
        diagnosis: data['diagnosis'] as String?,
        examResult: data['examResult'] as String?,
        paid: data['paid'] as bool?,
        patient: PatientStruct.maybeFromMap(data['patient']),
        prescription: PrescriptionStruct.maybeFromMap(data['prescription']),
        detailedRecord:
            DetailedRecordStruct.maybeFromMap(data['detailedRecord']),
        examRoom: ExamRoomStruct.maybeFromMap(data['examRoom']),
        status: data['status'] as String?,
      );

  static ExaminationStruct? maybeFromMap(dynamic data) => data is Map
      ? ExaminationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'recordCode': _recordCode,
        'reasonForVisit': _reasonForVisit,
        'diagnosis': _diagnosis,
        'examResult': _examResult,
        'paid': _paid,
        'patient': _patient?.toMap(),
        'prescription': _prescription?.toMap(),
        'detailedRecord': _detailedRecord?.toMap(),
        'examRoom': _examRoom?.toMap(),
        'status': _status,
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
        'prescription': serializeParam(
          _prescription,
          ParamType.DataStruct,
        ),
        'detailedRecord': serializeParam(
          _detailedRecord,
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
      }.withoutNulls;

  static ExaminationStruct fromSerializableMap(Map<String, dynamic> data) =>
      ExaminationStruct(
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
        prescription: deserializeStructParam(
          data['prescription'],
          ParamType.DataStruct,
          false,
          structBuilder: PrescriptionStruct.fromSerializableMap,
        ),
        detailedRecord: deserializeStructParam(
          data['detailedRecord'],
          ParamType.DataStruct,
          false,
          structBuilder: DetailedRecordStruct.fromSerializableMap,
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
      );

  @override
  String toString() => 'ExaminationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ExaminationStruct &&
        id == other.id &&
        recordCode == other.recordCode &&
        reasonForVisit == other.reasonForVisit &&
        diagnosis == other.diagnosis &&
        examResult == other.examResult &&
        paid == other.paid &&
        patient == other.patient &&
        prescription == other.prescription &&
        detailedRecord == other.detailedRecord &&
        examRoom == other.examRoom &&
        status == other.status;
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
        prescription,
        detailedRecord,
        examRoom,
        status
      ]);
}

ExaminationStruct createExaminationStruct({
  String? id,
  String? recordCode,
  String? reasonForVisit,
  String? diagnosis,
  String? examResult,
  bool? paid,
  PatientStruct? patient,
  PrescriptionStruct? prescription,
  DetailedRecordStruct? detailedRecord,
  ExamRoomStruct? examRoom,
  String? status,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ExaminationStruct(
      id: id,
      recordCode: recordCode,
      reasonForVisit: reasonForVisit,
      diagnosis: diagnosis,
      examResult: examResult,
      paid: paid,
      patient: patient ?? (clearUnsetFields ? PatientStruct() : null),
      prescription:
          prescription ?? (clearUnsetFields ? PrescriptionStruct() : null),
      detailedRecord:
          detailedRecord ?? (clearUnsetFields ? DetailedRecordStruct() : null),
      examRoom: examRoom ?? (clearUnsetFields ? ExamRoomStruct() : null),
      status: status,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ExaminationStruct? updateExaminationStruct(
  ExaminationStruct? examination, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    examination
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addExaminationStructData(
  Map<String, dynamic> firestoreData,
  ExaminationStruct? examination,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (examination == null) {
    return;
  }
  if (examination.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && examination.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final examinationData =
      getExaminationFirestoreData(examination, forFieldValue);
  final nestedData =
      examinationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = examination.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getExaminationFirestoreData(
  ExaminationStruct? examination, [
  bool forFieldValue = false,
]) {
  if (examination == null) {
    return {};
  }
  final firestoreData = mapToFirestore(examination.toMap());

  // Handle nested data for "patient" field.
  addPatientStructData(
    firestoreData,
    examination.hasPatient() ? examination.patient : null,
    'patient',
    forFieldValue,
  );

  // Handle nested data for "prescription" field.
  addPrescriptionStructData(
    firestoreData,
    examination.hasPrescription() ? examination.prescription : null,
    'prescription',
    forFieldValue,
  );

  // Handle nested data for "detailedRecord" field.
  addDetailedRecordStructData(
    firestoreData,
    examination.hasDetailedRecord() ? examination.detailedRecord : null,
    'detailedRecord',
    forFieldValue,
  );

  // Handle nested data for "examRoom" field.
  addExamRoomStructData(
    firestoreData,
    examination.hasExamRoom() ? examination.examRoom : null,
    'examRoom',
    forFieldValue,
  );

  // Add any Firestore field values
  examination.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getExaminationListFirestoreData(
  List<ExaminationStruct>? examinations,
) =>
    examinations?.map((e) => getExaminationFirestoreData(e, true)).toList() ??
    [];
