import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/admin/dialog_add_room/dialog_add_room_widget.dart';
import '/components/admin/dialog_edit_room/dialog_edit_room_widget.dart';
import '/components/admin/dialog_export/dialog_export_widget.dart';
import '/components/admin/nav_menu/nav_menu_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'add_room_widget.dart' show AddRoomWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddRoomModel extends FlutterFlowModel<AddRoomWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getAllExamRoom API)] action in AddRoom widget.
  ApiCallResponse? getOutput;
  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ExamRoomStruct>();

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    paginatedDataTableController.dispose();
  }
}
