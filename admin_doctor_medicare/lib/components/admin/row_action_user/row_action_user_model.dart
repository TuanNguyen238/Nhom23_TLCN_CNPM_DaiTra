import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'row_action_user_widget.dart' show RowActionUserWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RowActionUserModel extends FlutterFlowModel<RowActionUserWidget> {
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
