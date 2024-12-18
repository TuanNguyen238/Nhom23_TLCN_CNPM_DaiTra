// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PrescriptionStruct extends FFFirebaseStruct {
  PrescriptionStruct({
    String? id,
    String? note,
    List<DosagesStruct>? dosages,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _note = note,
        _dosages = dosages,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "note" field.
  String? _note;
  String get note => _note ?? '';
  set note(String? val) => _note = val;

  bool hasNote() => _note != null;

  // "dosages" field.
  List<DosagesStruct>? _dosages;
  List<DosagesStruct> get dosages => _dosages ?? const [];
  set dosages(List<DosagesStruct>? val) => _dosages = val;

  void updateDosages(Function(List<DosagesStruct>) updateFn) {
    updateFn(_dosages ??= []);
  }

  bool hasDosages() => _dosages != null;

  static PrescriptionStruct fromMap(Map<String, dynamic> data) =>
      PrescriptionStruct(
        id: data['id'] as String?,
        note: data['note'] as String?,
        dosages: getStructList(
          data['dosages'],
          DosagesStruct.fromMap,
        ),
      );

  static PrescriptionStruct? maybeFromMap(dynamic data) => data is Map
      ? PrescriptionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'note': _note,
        'dosages': _dosages?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'note': serializeParam(
          _note,
          ParamType.String,
        ),
        'dosages': serializeParam(
          _dosages,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static PrescriptionStruct fromSerializableMap(Map<String, dynamic> data) =>
      PrescriptionStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        note: deserializeParam(
          data['note'],
          ParamType.String,
          false,
        ),
        dosages: deserializeStructParam<DosagesStruct>(
          data['dosages'],
          ParamType.DataStruct,
          true,
          structBuilder: DosagesStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'PrescriptionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is PrescriptionStruct &&
        id == other.id &&
        note == other.note &&
        listEquality.equals(dosages, other.dosages);
  }

  @override
  int get hashCode => const ListEquality().hash([id, note, dosages]);
}

PrescriptionStruct createPrescriptionStruct({
  String? id,
  String? note,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    PrescriptionStruct(
      id: id,
      note: note,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

PrescriptionStruct? updatePrescriptionStruct(
  PrescriptionStruct? prescription, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    prescription
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addPrescriptionStructData(
  Map<String, dynamic> firestoreData,
  PrescriptionStruct? prescription,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (prescription == null) {
    return;
  }
  if (prescription.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && prescription.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final prescriptionData =
      getPrescriptionFirestoreData(prescription, forFieldValue);
  final nestedData =
      prescriptionData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = prescription.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getPrescriptionFirestoreData(
  PrescriptionStruct? prescription, [
  bool forFieldValue = false,
]) {
  if (prescription == null) {
    return {};
  }
  final firestoreData = mapToFirestore(prescription.toMap());

  // Add any Firestore field values
  prescription.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getPrescriptionListFirestoreData(
  List<PrescriptionStruct>? prescriptions,
) =>
    prescriptions?.map((e) => getPrescriptionFirestoreData(e, true)).toList() ??
    [];
