// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListDemoStruct extends FFFirebaseStruct {
  ListDemoStruct({
    List<RecordStruct>? data,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _data = data,
        super(firestoreUtilData);

  // "data" field.
  List<RecordStruct>? _data;
  List<RecordStruct> get data => _data ?? const [];
  set data(List<RecordStruct>? val) => _data = val;

  void updateData(Function(List<RecordStruct>) updateFn) {
    updateFn(_data ??= []);
  }

  bool hasData() => _data != null;

  static ListDemoStruct fromMap(Map<String, dynamic> data) => ListDemoStruct(
        data: getStructList(
          data['data'],
          RecordStruct.fromMap,
        ),
      );

  static ListDemoStruct? maybeFromMap(dynamic data) =>
      data is Map ? ListDemoStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'data': _data?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'data': serializeParam(
          _data,
          ParamType.DataStruct,
          isList: true,
        ),
      }.withoutNulls;

  static ListDemoStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListDemoStruct(
        data: deserializeStructParam<RecordStruct>(
          data['data'],
          ParamType.DataStruct,
          true,
          structBuilder: RecordStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'ListDemoStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ListDemoStruct && listEquality.equals(data, other.data);
  }

  @override
  int get hashCode => const ListEquality().hash([data]);
}

ListDemoStruct createListDemoStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ListDemoStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ListDemoStruct? updateListDemoStruct(
  ListDemoStruct? listDemo, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    listDemo
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addListDemoStructData(
  Map<String, dynamic> firestoreData,
  ListDemoStruct? listDemo,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (listDemo == null) {
    return;
  }
  if (listDemo.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && listDemo.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final listDemoData = getListDemoFirestoreData(listDemo, forFieldValue);
  final nestedData = listDemoData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = listDemo.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getListDemoFirestoreData(
  ListDemoStruct? listDemo, [
  bool forFieldValue = false,
]) {
  if (listDemo == null) {
    return {};
  }
  final firestoreData = mapToFirestore(listDemo.toMap());

  // Add any Firestore field values
  listDemo.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getListDemoListFirestoreData(
  List<ListDemoStruct>? listDemos,
) =>
    listDemos?.map((e) => getListDemoFirestoreData(e, true)).toList() ?? [];
