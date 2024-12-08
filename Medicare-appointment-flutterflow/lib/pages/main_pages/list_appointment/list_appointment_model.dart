import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'list_appointment_widget.dart' show ListAppointmentWidget;
import 'package:flutter/material.dart';

class ListAppointmentModel extends FlutterFlowModel<ListAppointmentWidget> {
  ///  Local state fields for this page.

  List<RecordStruct> listRecords = [];
  void addToListRecords(RecordStruct item) => listRecords.add(item);
  void removeFromListRecords(RecordStruct item) => listRecords.remove(item);
  void removeAtIndexFromListRecords(int index) => listRecords.removeAt(index);
  void insertAtIndexInListRecords(int index, RecordStruct item) =>
      listRecords.insert(index, item);
  void updateListRecordsAtIndex(int index, Function(RecordStruct) updateFn) =>
      listRecords[index] = updateFn(listRecords[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
