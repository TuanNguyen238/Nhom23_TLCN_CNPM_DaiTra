import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'data_table_user_widget.dart' show DataTableUserWidget;
import 'package:flutter/material.dart';

class DataTableUserModel extends FlutterFlowModel<DataTableUserWidget> {
  ///  Local state fields for this component.

  List<UserStruct> userList = [];
  void addToUserList(UserStruct item) => userList.add(item);
  void removeFromUserList(UserStruct item) => userList.remove(item);
  void removeAtIndexFromUserList(int index) => userList.removeAt(index);
  void insertAtIndexInUserList(int index, UserStruct item) =>
      userList.insert(index, item);
  void updateUserListAtIndex(int index, Function(UserStruct) updateFn) =>
      userList[index] = updateFn(userList[index]);

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
