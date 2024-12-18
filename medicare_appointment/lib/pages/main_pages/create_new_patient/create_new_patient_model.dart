import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_new_patient_widget.dart' show CreateNewPatientWidget;
import 'package:flutter/material.dart';

class CreateNewPatientModel extends FlutterFlowModel<CreateNewPatientWidget> {
  ///  Local state fields for this page.

  String? txtDOB;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtName widget.
  FocusNode? txtNameFocusNode1;
  TextEditingController? txtNameTextController1;
  String? Function(BuildContext, String?)? txtNameTextController1Validator;
  String? _txtNameTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'lyxmcpmu' /* Vui lòng nhập họ tên!  */,
      );
    }

    return null;
  }

  // State field(s) for txtSDT widget.
  FocusNode? txtSDTFocusNode;
  TextEditingController? txtSDTTextController;
  String? Function(BuildContext, String?)? txtSDTTextControllerValidator;
  String? _txtSDTTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '1j4kq52c' /* Vui lòng nhập số điện thoại! */,
      );
    }

    if (val.length < 10) {
      return FFLocalizations.of(context).getText(
        't1kv6uap' /* Số điện thoại phải có 10 chữ s... */,
      );
    }
    if (val.length > 10) {
      return FFLocalizations.of(context).getText(
        'itq4c502' /* Số điện thoại phải có 10 chữ s... */,
      );
    }

    return null;
  }

  DateTime? datePicked;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for txtName widget.
  FocusNode? txtNameFocusNode2;
  TextEditingController? txtNameTextController2;
  String? Function(BuildContext, String?)? txtNameTextController2Validator;
  String? _txtNameTextController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'wri86fhe' /* Vui lòng nhập số CCCD! */,
      );
    }

    if (val.length < 12) {
      return FFLocalizations.of(context).getText(
        'g3vzjzi1' /* Số CCCD phải có đúng 12 chữ số... */,
      );
    }
    if (val.length > 12) {
      return FFLocalizations.of(context).getText(
        '6pa8gq5q' /* Số CCCD phải có đúng 12 chữ số... */,
      );
    }

    return null;
  }

  // State field(s) for txtDiachi widget.
  FocusNode? txtDiachiFocusNode;
  TextEditingController? txtDiachiTextController;
  String? Function(BuildContext, String?)? txtDiachiTextControllerValidator;
  // State field(s) for txtTenNthan widget.
  FocusNode? txtTenNthanFocusNode;
  TextEditingController? txtTenNthanTextController;
  String? Function(BuildContext, String?)? txtTenNthanTextControllerValidator;
  String? _txtTenNthanTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'oc1fqblm' /* Vui lòng nhập tên người thân! */,
      );
    }

    return null;
  }

  // State field(s) for txtDiaChiNthan widget.
  FocusNode? txtDiaChiNthanFocusNode;
  TextEditingController? txtDiaChiNthanTextController;
  String? Function(BuildContext, String?)?
      txtDiaChiNthanTextControllerValidator;
  // State field(s) for txtSDTNthan widget.
  FocusNode? txtSDTNthanFocusNode;
  TextEditingController? txtSDTNthanTextController;
  String? Function(BuildContext, String?)? txtSDTNthanTextControllerValidator;
  // State field(s) for DropDownQHNthan widget.
  String? dropDownQHNthanValue;
  FormFieldController<String>? dropDownQHNthanValueController;
  // Stores action output result for [Backend Call - API (createPatient API)] action in btnSave widget.
  ApiCallResponse? createOutput;

  @override
  void initState(BuildContext context) {
    txtNameTextController1Validator = _txtNameTextController1Validator;
    txtSDTTextControllerValidator = _txtSDTTextControllerValidator;
    txtNameTextController2Validator = _txtNameTextController2Validator;
    txtTenNthanTextControllerValidator = _txtTenNthanTextControllerValidator;
  }

  @override
  void dispose() {
    txtNameFocusNode1?.dispose();
    txtNameTextController1?.dispose();

    txtSDTFocusNode?.dispose();
    txtSDTTextController?.dispose();

    txtNameFocusNode2?.dispose();
    txtNameTextController2?.dispose();

    txtDiachiFocusNode?.dispose();
    txtDiachiTextController?.dispose();

    txtTenNthanFocusNode?.dispose();
    txtTenNthanTextController?.dispose();

    txtDiaChiNthanFocusNode?.dispose();
    txtDiaChiNthanTextController?.dispose();

    txtSDTNthanFocusNode?.dispose();
    txtSDTNthanTextController?.dispose();
  }
}
