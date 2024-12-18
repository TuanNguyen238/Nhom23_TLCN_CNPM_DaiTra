import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'column_appointment_date_widget.dart' show ColumnAppointmentDateWidget;
import 'package:flutter/material.dart';

class ColumnAppointmentDateModel
    extends FlutterFlowModel<ColumnAppointmentDateWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];
  // Stores action output result for [Backend Call - API (getAvailableTIme API)] action in ChoiceChips widget.
  ApiCallResponse? getOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
