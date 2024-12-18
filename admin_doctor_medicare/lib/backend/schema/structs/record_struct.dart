// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RecordStruct extends BaseStruct {
  RecordStruct({
    String? id,
    String? recordCode,
    String? reasonForVisit,
    String? diagnosis,
    String? examResult,
    bool? paid,
    String? status,
    int? orderNumber,
    PatientStruct? patient,
    PrescriptionStruct? prescription,
    DetailedRecordStruct? detailedRecord,
    ExamRoomStruct? examRoom,
  })  : _id = id,
        _recordCode = recordCode,
        _reasonForVisit = reasonForVisit,
        _diagnosis = diagnosis,
        _examResult = examResult,
        _paid = paid,
        _status = status,
        _orderNumber = orderNumber,
        _patient = patient,
        _prescription = prescription,
        _detailedRecord = detailedRecord,
        _examRoom = examRoom;

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

  // "status" field.
  String? _status;
  String get status => _status ?? '';
  set status(String? val) => _status = val;

  bool hasStatus() => _status != null;

  // "orderNumber" field.
  int? _orderNumber;
  int get orderNumber => _orderNumber ?? 0;
  set orderNumber(int? val) => _orderNumber = val;

  void incrementOrderNumber(int amount) => orderNumber = orderNumber + amount;

  bool hasOrderNumber() => _orderNumber != null;

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

  static RecordStruct fromMap(Map<String, dynamic> data) => RecordStruct(
        id: data['id'] as String?,
        recordCode: data['recordCode'] as String?,
        reasonForVisit: data['reasonForVisit'] as String?,
        diagnosis: data['diagnosis'] as String?,
        examResult: data['examResult'] as String?,
        paid: data['paid'] as bool?,
        status: data['status'] as String?,
        orderNumber: castToType<int>(data['orderNumber']),
        patient: data['patient'] is PatientStruct
            ? data['patient']
            : PatientStruct.maybeFromMap(data['patient']),
        prescription: data['prescription'] is PrescriptionStruct
            ? data['prescription']
            : PrescriptionStruct.maybeFromMap(data['prescription']),
        detailedRecord: data['detailedRecord'] is DetailedRecordStruct
            ? data['detailedRecord']
            : DetailedRecordStruct.maybeFromMap(data['detailedRecord']),
        examRoom: data['examRoom'] is ExamRoomStruct
            ? data['examRoom']
            : ExamRoomStruct.maybeFromMap(data['examRoom']),
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
        'status': _status,
        'orderNumber': _orderNumber,
        'patient': _patient?.toMap(),
        'prescription': _prescription?.toMap(),
        'detailedRecord': _detailedRecord?.toMap(),
        'examRoom': _examRoom?.toMap(),
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
        'status': serializeParam(
          _status,
          ParamType.String,
        ),
        'orderNumber': serializeParam(
          _orderNumber,
          ParamType.int,
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
        status: deserializeParam(
          data['status'],
          ParamType.String,
          false,
        ),
        orderNumber: deserializeParam(
          data['orderNumber'],
          ParamType.int,
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
        status == other.status &&
        orderNumber == other.orderNumber &&
        patient == other.patient &&
        prescription == other.prescription &&
        detailedRecord == other.detailedRecord &&
        examRoom == other.examRoom;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        recordCode,
        reasonForVisit,
        diagnosis,
        examResult,
        paid,
        status,
        orderNumber,
        patient,
        prescription,
        detailedRecord,
        examRoom
      ]);
}

RecordStruct createRecordStruct({
  String? id,
  String? recordCode,
  String? reasonForVisit,
  String? diagnosis,
  String? examResult,
  bool? paid,
  String? status,
  int? orderNumber,
  PatientStruct? patient,
  PrescriptionStruct? prescription,
  DetailedRecordStruct? detailedRecord,
  ExamRoomStruct? examRoom,
}) =>
    RecordStruct(
      id: id,
      recordCode: recordCode,
      reasonForVisit: reasonForVisit,
      diagnosis: diagnosis,
      examResult: examResult,
      paid: paid,
      status: status,
      orderNumber: orderNumber,
      patient: patient ?? PatientStruct(),
      prescription: prescription ?? PrescriptionStruct(),
      detailedRecord: detailedRecord ?? DetailedRecordStruct(),
      examRoom: examRoom ?? ExamRoomStruct(),
    );
