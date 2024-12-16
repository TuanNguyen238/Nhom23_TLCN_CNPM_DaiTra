// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DetailedRecordStruct extends BaseStruct {
  DetailedRecordStruct({
    String? id,
    double? weight,
    double? height,
    double? bmi,
    int? heartRate,
    int? respiratoryRate,
    String? bloodPressure,
    int? spO2,
    String? clinicalIndicator,
    String? imageUrl,
  })  : _id = id,
        _weight = weight,
        _height = height,
        _bmi = bmi,
        _heartRate = heartRate,
        _respiratoryRate = respiratoryRate,
        _bloodPressure = bloodPressure,
        _spO2 = spO2,
        _clinicalIndicator = clinicalIndicator,
        _imageUrl = imageUrl;

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "weight" field.
  double? _weight;
  double get weight => _weight ?? 0.0;
  set weight(double? val) => _weight = val;

  void incrementWeight(double amount) => weight = weight + amount;

  bool hasWeight() => _weight != null;

  // "height" field.
  double? _height;
  double get height => _height ?? 0.0;
  set height(double? val) => _height = val;

  void incrementHeight(double amount) => height = height + amount;

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
        weight: castToType<double>(data['weight']),
        height: castToType<double>(data['height']),
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
          ParamType.double,
        ),
        'height': serializeParam(
          _height,
          ParamType.double,
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
          ParamType.double,
          false,
        ),
        height: deserializeParam(
          data['height'],
          ParamType.double,
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
  double? weight,
  double? height,
  double? bmi,
  int? heartRate,
  int? respiratoryRate,
  String? bloodPressure,
  int? spO2,
  String? clinicalIndicator,
  String? imageUrl,
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
    );
