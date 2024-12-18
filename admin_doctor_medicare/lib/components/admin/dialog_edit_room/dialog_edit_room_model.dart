import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'dialog_edit_room_widget.dart' show DialogEditRoomWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DialogEditRoomModel extends FlutterFlowModel<DialogEditRoomWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for roomNumber widget.
  FocusNode? roomNumberFocusNode;
  TextEditingController? roomNumberTextController;
  String? Function(BuildContext, String?)? roomNumberTextControllerValidator;
  // State field(s) for examTime widget.
  FocusNode? examTimeFocusNode;
  TextEditingController? examTimeTextController;
  String? Function(BuildContext, String?)? examTimeTextControllerValidator;
  // State field(s) for examDate widget.
  FocusNode? examDateFocusNode;
  TextEditingController? examDateTextController;
  String? Function(BuildContext, String?)? examDateTextControllerValidator;
  // State field(s) for type widget.
  FocusNode? typeFocusNode;
  TextEditingController? typeTextController;
  String? Function(BuildContext, String?)? typeTextControllerValidator;
  // State field(s) for doctorName widget.
  FocusNode? doctorNameFocusNode;
  TextEditingController? doctorNameTextController;
  String? Function(BuildContext, String?)? doctorNameTextControllerValidator;
  // Stores action output result for [Backend Call - API (updateExamRoom API)] action in Button widget.
  ApiCallResponse? updateOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    roomNumberFocusNode?.dispose();
    roomNumberTextController?.dispose();

    examTimeFocusNode?.dispose();
    examTimeTextController?.dispose();

    examDateFocusNode?.dispose();
    examDateTextController?.dispose();

    typeFocusNode?.dispose();
    typeTextController?.dispose();

    doctorNameFocusNode?.dispose();
    doctorNameTextController?.dispose();
  }
}
