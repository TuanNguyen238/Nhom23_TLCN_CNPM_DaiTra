import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/doctor/nav_menu_doctor/nav_menu_doctor_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'schedule_widget.dart' show ScheduleWidget;
import 'package:flutter/material.dart';

class ScheduleModel extends FlutterFlowModel<ScheduleWidget> {
  ///  Local state fields for this page.

  String txtDate = '';

  ///  State fields for stateful widgets in this page.

  // Model for NavMenuDoctor component.
  late NavMenuDoctorModel navMenuDoctorModel;
  DateTime? datePicked;
  // Stores action output result for [Backend Call - API (getScheduleForDoctor API)] action in ContainerDate widget.
  ApiCallResponse? getScheduleOutput;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<ScheduleStruct>();

  @override
  void initState(BuildContext context) {
    navMenuDoctorModel = createModel(context, () => NavMenuDoctorModel());
  }

  @override
  void dispose() {
    navMenuDoctorModel.dispose();
    paginatedDataTableController.dispose();
  }
}
