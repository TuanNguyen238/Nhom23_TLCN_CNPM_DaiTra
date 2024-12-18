import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dialog_add_room_widget.dart' show DialogAddRoomWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DialogAddRoomModel extends FlutterFlowModel<DialogAddRoomWidget> {
  ///  Local state fields for this component.

  List<DoctorStruct> doctors = [];
  void addToDoctors(DoctorStruct item) => doctors.add(item);
  void removeFromDoctors(DoctorStruct item) => doctors.remove(item);
  void removeAtIndexFromDoctors(int index) => doctors.removeAt(index);
  void insertAtIndexInDoctors(int index, DoctorStruct item) =>
      doctors.insert(index, item);
  void updateDoctorsAtIndex(int index, Function(DoctorStruct) updateFn) =>
      doctors[index] = updateFn(doctors[index]);

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (getAllDoctor)] action in DialogAddRoom widget.
  ApiCallResponse? getOutput;
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
