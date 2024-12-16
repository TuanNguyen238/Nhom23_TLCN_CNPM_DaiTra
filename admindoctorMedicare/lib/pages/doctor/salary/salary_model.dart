import '/backend/api_requests/api_calls.dart';
import '/components/doctor/nav_menu_doctor/nav_menu_doctor_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'salary_widget.dart' show SalaryWidget;
import 'package:flutter/material.dart';

class SalaryModel extends FlutterFlowModel<SalaryWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavMenuDoctor component.
  late NavMenuDoctorModel navMenuDoctorModel;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Backend Call - API (getSalaryForDoctor API)] action in ChoiceChips widget.
  ApiCallResponse? getSalaryOutput;

  @override
  void initState(BuildContext context) {
    navMenuDoctorModel = createModel(context, () => NavMenuDoctorModel());
  }

  @override
  void dispose() {
    navMenuDoctorModel.dispose();
  }
}
