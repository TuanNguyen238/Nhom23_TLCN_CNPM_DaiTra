// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class DetailedRecordStruct extends FFFirebaseStruct {
  DetailedRecordStruct({
    String? id,
    int? weight,
    int? height,
    double? bmi,
    int? heartRate,
    int? respiratoryRate,
    String? bloodPressure,
    int? spO2,
    String? clinicalIndicator,
    String? imageUrl,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _weight = weight,
        _height = height,
        _bmi = bmi,
        _heartRate = heartRate,
        _respiratoryRate = respiratoryRate,
        _bloodPressure = bloodPressure,
        _spO2 = spO2,
        _clinicalIndicator = clinicalIndicator,
        _imageUrl = imageUrl,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "weight" field.
  int? _weight;
  int get weight => _weight ?? 0;
  set weight(int? val) => _weight = val;

  void incrementWeight(int amount) => weight = weight + amount;

  bool hasWeight() => _weight != null;

  // "height" field.
  int? _height;
  int get height => _height ?? 0;
  set height(int? val) => _height = val;

  void incrementHeight(int amount) => height = height + amount;

  bool hasHeight() => _height != null;

  // "bmi" field.
  double? _bmi;
  double get bmi => _bmi ?? 0.0;
  set bmi(double? val) => _bmi = val;

  void incrementBmi(double amount) => bmi = bmi + amount;

  bool hasBmi() => _bmi != null;

  // "heartRate" field.
  int? _heartRate;
  int get heartRate => _heartRate ?? 0;
  set heartRate(int? val) => _heartRate = val;

  void incrementHeartRate(int amount) => heartRate = heartRate + amount;

  bool hasHeartRate() => _heartRate != null;

  // "respiratoryRate" field.
  int? _respiratoryRate;
  int get respiratoryRate => _respiratoryRate ?? 0;
  set respiratoryRate(int? val) => _respiratoryRate = val;

  void incrementRespiratoryRate(int amount) =>
      respiratoryRate = respiratoryRate + amount;

  bool hasRespiratoryRate() => _respiratoryRate != null;

  // "bloodPressure" field.
  String? _bloodPressure;
  String get bloodPressure => _bloodPressure ?? '';
  set bloodPressure(String? val) => _bloodPressure = val;

  bool hasBloodPressure() => _bloodPressure != null;

  // "spO2" field.
  int? _spO2;
  int get spO2 => _spO2 ?? 0;
  set spO2(int? val) => _spO2 = val;

  void incrementSpO2(int amount) => spO2 = spO2 + amount;

  bool hasSpO2() => _spO2 != null;

  // "clinicalIndicator" field.
  String? _clinicalIndicator;
  String get clinicalIndicator => _clinicalIndicator ?? '';
  set clinicalIndicator(String? val) => _clinicalIndicator = val;

  bool hasClinicalIndicator() => _clinicalIndicator != null;

  // "imageUrl" field.
  String? _imageUrl;
  String get imageUrl => _imageUrl ?? '';
  set imageUrl(String? val) => _imageUrl = val;

  bool hasImageUrl() => _imageUrl != null;

  static DetailedRecordStruct fromMap(Map<String, dynamic> data) =>
      DetailedRecordStruct(
        id: data['id'] as String?,
        weight: castToType<int>(data['weight']),
        height: castToType<int>(data['height']),
        bmi: castToType<double>(data['bmi']),
        heartRate: castToType<int>(data['heartRate']),
        respiratoryRate: castToType<int>(data['respiratoryRate']),
        bloodPressure: data['bloodPressure'] as String?,
        spO2: castToType<int>(data['spO2']),
        clinicalIndicator: data['clinicalIndicator'] as String?,
        imageUrl: data['imageUrl'] as String?,
      );

  static DetailedRecordStruct? maybeFromMap(dynamic data) => data is Map
      ? DetailedRecordStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'weight': _weight,
        'height': _height,
        'bmi': _bmi,
        'heartRate': _heartRate,
        'respiratoryRate': _respiratoryRate,
        'bloodPressure': _bloodPressure,
        'spO2': _spO2,
        'clinicalIndicator': _clinicalIndicator,
        'imageUrl': _imageUrl,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'weight': serializeParam(
          _weight,
          ParamType.int,
        ),
        'height': serializeParam(
          _height,
          ParamType.int,
        ),
        'bmi': serializeParam(
          _bmi,
          ParamType.double,
        ),
        'heartRate': serializeParam(
          _heartRate,
          ParamType.int,
        ),
        'respiratoryRate': serializeParam(
          _respiratoryRate,
          ParamType.int,
        ),
        'bloodPressure': serializeParam(
          _bloodPressure,
          ParamType.String,
        ),
        'spO2': serializeParam(
          _spO2,
          ParamType.int,
        ),
        'clinicalIndicator': serializeParam(
          _clinicalIndicator,
          ParamType.String,
        ),
        'imageUrl': serializeParam(
          _imageUrl,
          ParamType.String,
        ),
      }.withoutNulls;

  static DetailedRecordStruct fromSerializableMap(Map<String, dynamic> data) =>
      DetailedRecordStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        weight: deserializeParam(
          data['weight'],
          ParamType.int,
          false,
        ),
        height: deserializeParam(
          data['height'],
          ParamType.int,
          false,
        ),
        bmi: deserializeParam(
          data['bmi'],
          ParamType.double,
          false,
        ),
        heartRate: deserializeParam(
          data['heartRate'],
          ParamType.int,
          false,
        ),
        respiratoryRate: deserializeParam(
          data['respiratoryRate'],
          ParamType.int,
          false,
        ),
        bloodPressure: deserializeParam(
          data['bloodPressure'],
          ParamType.String,
          false,
        ),
        spO2: deserializeParam(
          data['spO2'],
          ParamType.int,
          false,
        ),
        clinicalIndicator: deserializeParam(
          data['clinicalIndicator'],
          ParamType.String,
          false,
        ),
        imageUrl: deserializeParam(
          data['imageUrl'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'DetailedRecordStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DetailedRecordStruct &&
        id == other.id &&
        weight == other.weight &&
        height == other.height &&
        bmi == other.bmi &&
        heartRate == other.heartRate &&
        respiratoryRate == other.respiratoryRate &&
        bloodPressure == other.bloodPressure &&
        spO2 == other.spO2 &&
        clinicalIndicator == other.clinicalIndicator &&
        imageUrl == other.imageUrl;
  }

  @override
  int get hashCode => const ListEquality().hash([
        id,
        weight,
        height,
        bmi,
        heartRate,
        respiratoryRate,
        bloodPressure,
        spO2,
        clinicalIndicator,
        imageUrl
      ]);
}

DetailedRecordStruct createDetailedRecordStruct({
  String? id,
  int? weight,
  int? height,
  double? bmi,
  int? heartRate,
  int? respiratoryRate,
  String? bloodPressure,
  int? spO2,
  String? clinicalIndicator,
  String? imageUrl,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DetailedRecordStruct(
      id: id,
      weight: weight,
      height: height,
      bmi: bmi,
      heartRate: heartRate,
      respiratoryRate: respiratoryRate,
      bloodPressure: bloodPressure,
      spO2: spO2,
      clinicalIndicator: clinicalIndicator,
      imageUrl: imageUrl,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DetailedRecordStruct? updateDetailedRecordStruct(
  DetailedRecordStruct? detailedRecord, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    detailedRecord
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDetailedRecordStructData(
  Map<String, dynamic> firestoreData,
  DetailedRecordStruct? detailedRecord,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (detailedRecord == null) {
    return;
  }
  if (detailedRecord.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && detailedRecord.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final detailedRecordData =
      getDetailedRecordFirestoreData(detailedRecord, forFieldValue);
  final nestedData =
      detailedRecordData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = detailedRecord.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDetailedRecordFirestoreData(
  DetailedRecordStruct? detailedRecord, [
  bool forFieldValue = false,
]) {
  if (detailedRecord == null) {
    return {};
  }
  final firestoreData = mapToFirestore(detailedRecord.toMap());

  // Add any Firestore field values
  detailedRecord.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDetailedRecordListFirestoreData(
  List<DetailedRecordStruct>? detailedRecords,
) =>
    detailedRecords
        ?.map((e) => getDetailedRecordFirestoreData(e, true))
        .toList() ??
    [];
