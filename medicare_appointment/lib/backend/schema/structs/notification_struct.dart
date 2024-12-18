// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class NotificationStruct extends FFFirebaseStruct {
  NotificationStruct({
    String? id,
    String? title,
    String? content,
    String? createdAt,
    String? medicalRecordId,
    String? relativeTime,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _id = id,
        _title = title,
        _content = content,
        _createdAt = createdAt,
        _medicalRecordId = medicalRecordId,
        _relativeTime = relativeTime,
        super(firestoreUtilData);

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  set id(String? val) => _id = val;

  bool hasId() => _id != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  set title(String? val) => _title = val;

  bool hasTitle() => _title != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  set content(String? val) => _content = val;

  bool hasContent() => _content != null;

  // "createdAt" field.
  String? _createdAt;
  String get createdAt => _createdAt ?? '';
  set createdAt(String? val) => _createdAt = val;

  bool hasCreatedAt() => _createdAt != null;

  // "medicalRecordId" field.
  String? _medicalRecordId;
  String get medicalRecordId => _medicalRecordId ?? '';
  set medicalRecordId(String? val) => _medicalRecordId = val;

  bool hasMedicalRecordId() => _medicalRecordId != null;

  // "relativeTime" field.
  String? _relativeTime;
  String get relativeTime => _relativeTime ?? '';
  set relativeTime(String? val) => _relativeTime = val;

  bool hasRelativeTime() => _relativeTime != null;

  static NotificationStruct fromMap(Map<String, dynamic> data) =>
      NotificationStruct(
        id: data['id'] as String?,
        title: data['title'] as String?,
        content: data['content'] as String?,
        createdAt: data['createdAt'] as String?,
        medicalRecordId: data['medicalRecordId'] as String?,
        relativeTime: data['relativeTime'] as String?,
      );

  static NotificationStruct? maybeFromMap(dynamic data) => data is Map
      ? NotificationStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'id': _id,
        'title': _title,
        'content': _content,
        'createdAt': _createdAt,
        'medicalRecordId': _medicalRecordId,
        'relativeTime': _relativeTime,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'id': serializeParam(
          _id,
          ParamType.String,
        ),
        'title': serializeParam(
          _title,
          ParamType.String,
        ),
        'content': serializeParam(
          _content,
          ParamType.String,
        ),
        'createdAt': serializeParam(
          _createdAt,
          ParamType.String,
        ),
        'medicalRecordId': serializeParam(
          _medicalRecordId,
          ParamType.String,
        ),
        'relativeTime': serializeParam(
          _relativeTime,
          ParamType.String,
        ),
      }.withoutNulls;

  static NotificationStruct fromSerializableMap(Map<String, dynamic> data) =>
      NotificationStruct(
        id: deserializeParam(
          data['id'],
          ParamType.String,
          false,
        ),
        title: deserializeParam(
          data['title'],
          ParamType.String,
          false,
        ),
        content: deserializeParam(
          data['content'],
          ParamType.String,
          false,
        ),
        createdAt: deserializeParam(
          data['createdAt'],
          ParamType.String,
          false,
        ),
        medicalRecordId: deserializeParam(
          data['medicalRecordId'],
          ParamType.String,
          false,
        ),
        relativeTime: deserializeParam(
          data['relativeTime'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'NotificationStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is NotificationStruct &&
        id == other.id &&
        title == other.title &&
        content == other.content &&
        createdAt == other.createdAt &&
        medicalRecordId == other.medicalRecordId &&
        relativeTime == other.relativeTime;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([id, title, content, createdAt, medicalRecordId, relativeTime]);
}

NotificationStruct createNotificationStruct({
  String? id,
  String? title,
  String? content,
  String? createdAt,
  String? medicalRecordId,
  String? relativeTime,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    NotificationStruct(
      id: id,
      title: title,
      content: content,
      createdAt: createdAt,
      medicalRecordId: medicalRecordId,
      relativeTime: relativeTime,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

NotificationStruct? updateNotificationStruct(
  NotificationStruct? notification, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    notification
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addNotificationStructData(
  Map<String, dynamic> firestoreData,
  NotificationStruct? notification,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (notification == null) {
    return;
  }
  if (notification.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && notification.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final notificationData =
      getNotificationFirestoreData(notification, forFieldValue);
  final nestedData =
      notificationData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = notification.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getNotificationFirestoreData(
  NotificationStruct? notification, [
  bool forFieldValue = false,
]) {
  if (notification == null) {
    return {};
  }
  final firestoreData = mapToFirestore(notification.toMap());

  // Add any Firestore field values
  notification.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getNotificationListFirestoreData(
  List<NotificationStruct>? notifications,
) =>
    notifications?.map((e) => getNotificationFirestoreData(e, true)).toList() ??
    [];
