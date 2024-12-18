import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/doctor/nav_menu_doctor/nav_menu_doctor_widget.dart';
import '/components/doctor/scan_q_r/scan_q_r_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'medical_records_widget.dart' show MedicalRecordsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MedicalRecordsModel extends FlutterFlowModel<MedicalRecordsWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getRecordByDoctor API)] action in MedicalRecords widget.
  ApiCallResponse? getDoctorOutput;
  // Model for NavMenuDoctor component.
  late NavMenuDoctorModel navMenuDoctorModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<RecordStruct>();

  @override
  void initState(BuildContext context) {
    navMenuDoctorModel = createModel(context, () => NavMenuDoctorModel());
  }

  @override
  void dispose() {
    navMenuDoctorModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    paginatedDataTableController.dispose();
  }
}
