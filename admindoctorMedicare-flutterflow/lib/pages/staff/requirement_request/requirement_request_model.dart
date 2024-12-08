import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/staff/nav_menu_staff/nav_menu_staff_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'requirement_request_widget.dart' show RequirementRequestWidget;
import 'package:flutter/material.dart';

class RequirementRequestModel
    extends FlutterFlowModel<RequirementRequestWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getRecordByStaff API)] action in RequirementRequest widget.
  ApiCallResponse? getOutput;
  // Model for NavMenuStaff component.
  late NavMenuStaffModel navMenuStaffModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<RecordStruct>();

  @override
  void initState(BuildContext context) {
    navMenuStaffModel = createModel(context, () => NavMenuStaffModel());
  }

  @override
  void dispose() {
    navMenuStaffModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    paginatedDataTableController.dispose();
  }
}
