import '/backend/schema/structs/index.dart';
import '/components/admin/row_action_staff/row_action_staff_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'data_table_staff_widget.dart' show DataTableStaffWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DataTableStaffModel extends FlutterFlowModel<DataTableStaffWidget> {
  ///  Local state fields for this component.

  List<UserStruct> staffList = [];
  void addToStaffList(UserStruct item) => staffList.add(item);
  void removeFromStaffList(UserStruct item) => staffList.remove(item);
  void removeAtIndexFromStaffList(int index) => staffList.removeAt(index);
  void insertAtIndexInStaffList(int index, UserStruct item) =>
      staffList.insert(index, item);
  void updateStaffListAtIndex(int index, Function(UserStruct) updateFn) =>
      staffList[index] = updateFn(staffList[index]);

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
