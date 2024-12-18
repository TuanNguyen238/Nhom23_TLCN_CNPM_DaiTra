import '/backend/api_requests/api_calls.dart';
import '/components/admin/dialog_edit_staff/dialog_edit_staff_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'row_action_staff_widget.dart' show RowActionStaffWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RowActionStaffModel extends FlutterFlowModel<RowActionStaffWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Backend Call - API (updatestatus API)] action in Switch widget.
  ApiCallResponse? updateStatusOnOutput;
  // Stores action output result for [Backend Call - API (updatestatus API)] action in Switch widget.
  ApiCallResponse? updateStatusOffOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
