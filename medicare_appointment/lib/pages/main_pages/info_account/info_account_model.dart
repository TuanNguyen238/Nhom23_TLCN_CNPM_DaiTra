import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'info_account_widget.dart' show InfoAccountWidget;
import 'package:flutter/material.dart';

class InfoAccountModel extends FlutterFlowModel<InfoAccountWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtName widget.
  FocusNode? txtNameFocusNode;
  TextEditingController? txtNameTextController;
  String? Function(BuildContext, String?)? txtNameTextControllerValidator;
  // State field(s) for txtCCCD widget.
  FocusNode? txtCCCDFocusNode;
  TextEditingController? txtCCCDTextController;
  String? Function(BuildContext, String?)? txtCCCDTextControllerValidator;
  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  // Stores action output result for [Backend Call - API (updateinfo API)] action in Button widget.
  ApiCallResponse? updateOutput;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtNameFocusNode?.dispose();
    txtNameTextController?.dispose();

    txtCCCDFocusNode?.dispose();
    txtCCCDTextController?.dispose();

    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();
  }
}
