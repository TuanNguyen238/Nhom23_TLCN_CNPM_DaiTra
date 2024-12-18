import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/doctor/nav_menu_doctor/nav_menu_doctor_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'add_record_widget.dart' show AddRecordWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddRecordModel extends FlutterFlowModel<AddRecordWidget> {
  ///  Local state fields for this page.

  List<DosageInputStruct> dosagesInput = [];
  void addToDosagesInput(DosageInputStruct item) => dosagesInput.add(item);
  void removeFromDosagesInput(DosageInputStruct item) =>
      dosagesInput.remove(item);
  void removeAtIndexFromDosagesInput(int index) => dosagesInput.removeAt(index);
  void insertAtIndexInDosagesInput(int index, DosageInputStruct item) =>
      dosagesInput.insert(index, item);
  void updateDosagesInputAtIndex(
          int index, Function(DosageInputStruct) updateFn) =>
      dosagesInput[index] = updateFn(dosagesInput[index]);

  List<String> bloodPressure = ['0', '0'];
  void addToBloodPressure(String item) => bloodPressure.add(item);
  void removeFromBloodPressure(String item) => bloodPressure.remove(item);
  void removeAtIndexFromBloodPressure(int index) =>
      bloodPressure.removeAt(index);
  void insertAtIndexInBloodPressure(int index, String item) =>
      bloodPressure.insert(index, item);
  void updateBloodPressureAtIndex(int index, Function(String) updateFn) =>
      bloodPressure[index] = updateFn(bloodPressure[index]);

  List<String> listMedicineName = [];
  void addToListMedicineName(String item) => listMedicineName.add(item);
  void removeFromListMedicineName(String item) => listMedicineName.remove(item);
  void removeAtIndexFromListMedicineName(int index) =>
      listMedicineName.removeAt(index);
  void insertAtIndexInListMedicineName(int index, String item) =>
      listMedicineName.insert(index, item);
  void updateListMedicineNameAtIndex(int index, Function(String) updateFn) =>
      listMedicineName[index] = updateFn(listMedicineName[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (getAllMedicine API)] action in AddRecord widget.
  ApiCallResponse? getOutput;
  // Model for NavMenuDoctor component.
  late NavMenuDoctorModel navMenuDoctorModel;
  // State field(s) for height widget.
  FocusNode? heightFocusNode;
  TextEditingController? heightTextController;
  String? Function(BuildContext, String?)? heightTextControllerValidator;
  // State field(s) for weght widget.
  FocusNode? weghtFocusNode;
  TextEditingController? weghtTextController;
  String? Function(BuildContext, String?)? weghtTextControllerValidator;
  // State field(s) for bmi widget.
  FocusNode? bmiFocusNode;
  TextEditingController? bmiTextController;
  String? Function(BuildContext, String?)? bmiTextControllerValidator;
  // State field(s) for heartBeat widget.
  FocusNode? heartBeatFocusNode;
  TextEditingController? heartBeatTextController;
  String? Function(BuildContext, String?)? heartBeatTextControllerValidator;
  // State field(s) for breathingRhym widget.
  FocusNode? breathingRhymFocusNode;
  TextEditingController? breathingRhymTextController;
  String? Function(BuildContext, String?)? breathingRhymTextControllerValidator;
  // State field(s) for bloodPressure widget.
  FocusNode? bloodPressureFocusNode1;
  TextEditingController? bloodPressureTextController1;
  String? Function(BuildContext, String?)?
      bloodPressureTextController1Validator;
  // State field(s) for bloodPressure widget.
  FocusNode? bloodPressureFocusNode2;
  TextEditingController? bloodPressureTextController2;
  String? Function(BuildContext, String?)?
      bloodPressureTextController2Validator;
  // State field(s) for spO2 widget.
  FocusNode? spO2FocusNode;
  TextEditingController? spO2TextController;
  String? Function(BuildContext, String?)? spO2TextControllerValidator;
  // State field(s) for diagnosis widget.
  FocusNode? diagnosisFocusNode;
  TextEditingController? diagnosisTextController;
  String? Function(BuildContext, String?)? diagnosisTextControllerValidator;
  // State field(s) for examination widget.
  FocusNode? examinationFocusNode;
  TextEditingController? examinationTextController;
  String? Function(BuildContext, String?)? examinationTextControllerValidator;
  // State field(s) for paraclinicaImaging widget.
  FocusNode? paraclinicaImagingFocusNode;
  TextEditingController? paraclinicaImagingTextController;
  String? Function(BuildContext, String?)?
      paraclinicaImagingTextControllerValidator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for medicineDropdown widget.
  String? medicineDropdownValue;
  FormFieldController<String>? medicineDropdownValueController;
  // State field(s) for note widget.
  FocusNode? noteFocusNode;
  TextEditingController? noteTextController;
  String? Function(BuildContext, String?)? noteTextControllerValidator;
  // State field(s) for morning widget.
  FocusNode? morningFocusNode;
  TextEditingController? morningTextController;
  String? Function(BuildContext, String?)? morningTextControllerValidator;
  // State field(s) for afternoon widget.
  FocusNode? afternoonFocusNode;
  TextEditingController? afternoonTextController;
  String? Function(BuildContext, String?)? afternoonTextControllerValidator;
  // State field(s) for evening widget.
  FocusNode? eveningFocusNode;
  TextEditingController? eveningTextController;
  String? Function(BuildContext, String?)? eveningTextControllerValidator;
  // State field(s) for day widget.
  FocusNode? dayFocusNode;
  TextEditingController? dayTextController;
  String? Function(BuildContext, String?)? dayTextControllerValidator;
  // Stores action output result for [Backend Call - API (create record API)] action in Button widget.
  ApiCallResponse? createOutput;
  // Stores action output result for [Backend Call - API (importFileRecord API)] action in Button widget.
  ApiCallResponse? importOutput;

  @override
  void initState(BuildContext context) {
    navMenuDoctorModel = createModel(context, () => NavMenuDoctorModel());
  }

  @override
  void dispose() {
    navMenuDoctorModel.dispose();
    heightFocusNode?.dispose();
    heightTextController?.dispose();

    weghtFocusNode?.dispose();
    weghtTextController?.dispose();

    bmiFocusNode?.dispose();
    bmiTextController?.dispose();

    heartBeatFocusNode?.dispose();
    heartBeatTextController?.dispose();

    breathingRhymFocusNode?.dispose();
    breathingRhymTextController?.dispose();

    bloodPressureFocusNode1?.dispose();
    bloodPressureTextController1?.dispose();

    bloodPressureFocusNode2?.dispose();
    bloodPressureTextController2?.dispose();

    spO2FocusNode?.dispose();
    spO2TextController?.dispose();

    diagnosisFocusNode?.dispose();
    diagnosisTextController?.dispose();

    examinationFocusNode?.dispose();
    examinationTextController?.dispose();

    paraclinicaImagingFocusNode?.dispose();
    paraclinicaImagingTextController?.dispose();

    noteFocusNode?.dispose();
    noteTextController?.dispose();

    morningFocusNode?.dispose();
    morningTextController?.dispose();

    afternoonFocusNode?.dispose();
    afternoonTextController?.dispose();

    eveningFocusNode?.dispose();
    eveningTextController?.dispose();

    dayFocusNode?.dispose();
    dayTextController?.dispose();
  }
}
