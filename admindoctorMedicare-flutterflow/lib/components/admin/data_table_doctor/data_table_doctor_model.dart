import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'data_table_doctor_widget.dart' show DataTableDoctorWidget;
import 'package:flutter/material.dart';

class DataTableDoctorModel extends FlutterFlowModel<DataTableDoctorWidget> {
  ///  Local state fields for this component.

  List<UserStruct> doctorList = [];
  void addToDoctorList(UserStruct item) => doctorList.add(item);
  void removeFromDoctorList(UserStruct item) => doctorList.remove(item);
  void removeAtIndexFromDoctorList(int index) => doctorList.removeAt(index);
  void insertAtIndexInDoctorList(int index, UserStruct item) =>
      doctorList.insert(index, item);
  void updateDoctorListAtIndex(int index, Function(UserStruct) updateFn) =>
      doctorList[index] = updateFn(doctorList[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<UserStruct>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    paginatedDataTableController.dispose();
  }
}
