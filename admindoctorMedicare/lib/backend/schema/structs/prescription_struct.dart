// ignore_for_file: unnecessary_getters_setters


import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PrescriptionStruct extends BaseStruct {
  PrescriptionStruct({
    String? id,
    String? note,
    List<DosagesStruct>? dosages,
  })  : _id = id,
        _note = note,
        _dosages = dosages;

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
}) =>
    PrescriptionStruct(
      id: id,
      note: note,
    );
