import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/admin/data_table_admin/data_table_admin_widget.dart';
import '/components/admin/data_table_doctor/data_table_doctor_widget.dart';
import '/components/admin/data_table_staff/data_table_staff_widget.dart';
import '/components/admin/data_table_user/data_table_user_widget.dart';
import '/components/admin/dialog_add_doctor/dialog_add_doctor_widget.dart';
import '/components/admin/dialog_add_staff/dialog_add_staff_widget.dart';
import '/components/admin/nav_menu/nav_menu_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'user_list_widget.dart' show UserListWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserListModel extends FlutterFlowModel<UserListWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getAllUser API)] action in UserList widget.
  ApiCallResponse? getOutput;
  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for DataTableUser component.
  late DataTableUserModel dataTableUserModel;
  // Model for DataTableDoctor component.
  late DataTableDoctorModel dataTableDoctorModel;
  // Model for DataTableAdmin component.
  late DataTableAdminModel dataTableAdminModel;
  // Model for DataTableStaff component.
  late DataTableStaffModel dataTableStaffModel;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    dataTableUserModel = createModel(context, () => DataTableUserModel());
    dataTableDoctorModel = createModel(context, () => DataTableDoctorModel());
    dataTableAdminModel = createModel(context, () => DataTableAdminModel());
    dataTableStaffModel = createModel(context, () => DataTableStaffModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    tabBarController?.dispose();
    dataTableUserModel.dispose();
    dataTableDoctorModel.dispose();
    dataTableAdminModel.dispose();
    dataTableStaffModel.dispose();
  }
}
