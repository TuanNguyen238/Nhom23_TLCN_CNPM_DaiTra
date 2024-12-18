import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/admin/dialog_update_medicine/dialog_update_medicine_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'row_action_medicine_widget.dart' show RowActionMedicineWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RowActionMedicineModel extends FlutterFlowModel<RowActionMedicineWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Switch widget.
  bool? switchValue;
  // Stores action output result for [Backend Call - API (updatestatusMedicine API)] action in Switch widget.
  ApiCallResponse? updateStatusOnOutput;
  // Stores action output result for [Backend Call - API (updatestatusMedicine API)] action in Switch widget.
  ApiCallResponse? updateStatusOffOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
