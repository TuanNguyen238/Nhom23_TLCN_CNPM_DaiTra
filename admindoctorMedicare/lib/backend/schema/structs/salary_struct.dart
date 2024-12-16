// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SalaryStruct extends BaseStruct {
  SalaryStruct({
    int? baseSalary,
    int? patientsCount,
    int? totalSalary,
  })  : _baseSalary = baseSalary,
        _patientsCount = patientsCount,
        _totalSalary = totalSalary;

  // "baseSalary" field.
  int? _baseSalary;
  int get baseSalary => _baseSalary ?? 0;
  set baseSalary(int? val) => _baseSalary = val;

  void incrementBaseSalary(int amount) => baseSalary = baseSalary + amount;

  bool hasBaseSalary() => _baseSalary != null;

  // "patientsCount" field.
  int? _patientsCount;
  int get patientsCount => _patientsCount ?? 0;
  set patientsCount(int? val) => _patientsCount = val;

  void incrementPatientsCount(int amount) =>
      patientsCount = patientsCount + amount;

  bool hasPatientsCount() => _patientsCount != null;

  // "totalSalary" field.
  int? _totalSalary;
  int get totalSalary => _totalSalary ?? 0;
  set totalSalary(int? val) => _totalSalary = val;

  void incrementTotalSalary(int amount) => totalSalary = totalSalary + amount;

  bool hasTotalSalary() => _totalSalary != null;

  static SalaryStruct fromMap(Map<String, dynamic> data) => SalaryStruct(
        baseSalary: castToType<int>(data['baseSalary']),
        patientsCount: castToType<int>(data['patientsCount']),
        totalSalary: castToType<int>(data['totalSalary']),
      );

  static SalaryStruct? maybeFromMap(dynamic data) =>
      data is Map ? SalaryStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'baseSalary': _baseSalary,
        'patientsCount': _patientsCount,
        'totalSalary': _totalSalary,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'baseSalary': serializeParam(
          _baseSalary,
          ParamType.int,
        ),
        'patientsCount': serializeParam(
          _patientsCount,
          ParamType.int,
        ),
        'totalSalary': serializeParam(
          _totalSalary,
          ParamType.int,
        ),
      }.withoutNulls;

  static SalaryStruct fromSerializableMap(Map<String, dynamic> data) =>
      SalaryStruct(
        baseSalary: deserializeParam(
          data['baseSalary'],
          ParamType.int,
          false,
        ),
        patientsCount: deserializeParam(
          data['patientsCount'],
          ParamType.int,
          false,
        ),
        totalSalary: deserializeParam(
          data['totalSalary'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'SalaryStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SalaryStruct &&
        baseSalary == other.baseSalary &&
        patientsCount == other.patientsCount &&
        totalSalary == other.totalSalary;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([baseSalary, patientsCount, totalSalary]);
}

SalaryStruct createSalaryStruct({
  int? baseSalary,
  int? patientsCount,
  int? totalSalary,
}) =>
    SalaryStruct(
      baseSalary: baseSalary,
      patientsCount: patientsCount,
      totalSalary: totalSalary,
    );
