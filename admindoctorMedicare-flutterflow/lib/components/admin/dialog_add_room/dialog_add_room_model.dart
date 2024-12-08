import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dialog_add_room_widget.dart' show DialogAddRoomWidget;
import 'package:flutter/material.dart';

class DialogAddRoomModel extends FlutterFlowModel<DialogAddRoomWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for CountController widget.
  int? countControllerValue;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for choiceDate widget.
  FormFieldController<List<String>>? choiceDateValueController;
  String? get choiceDateValue => choiceDateValueController?.value?.firstOrNull;
  set choiceDateValue(String? val) =>
      choiceDateValueController?.value = val != null ? [val] : [];
  // State field(s) for choiceTime widget.
  FormFieldController<List<String>>? choiceTimeValueController;
  String? get choiceTimeValue => choiceTimeValueController?.value?.firstOrNull;
  set choiceTimeValue(String? val) =>
      choiceTimeValueController?.value = val != null ? [val] : [];
  // State field(s) for typeDropdown widget.
  String? typeDropdownValue;
  FormFieldController<String>? typeDropdownValueController;
  // State field(s) for listDoctorDropdown widget.
  String? listDoctorDropdownValue;
  FormFieldController<String>? listDoctorDropdownValueController;
  // Stores action output result for [Backend Call - API (createExamRoom API)] action in Button widget.
  ApiCallResponse? createOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
