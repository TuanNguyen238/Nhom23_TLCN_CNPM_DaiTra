import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'forgot_pass_enter_pass_widget.dart' show ForgotPassEnterPassWidget;
import 'package:flutter/material.dart';

class ForgotPassEnterPassModel
    extends FlutterFlowModel<ForgotPassEnterPassWidget> {
  ///  Local state fields for this page.

  UserStruct? user;
  void updateUserStruct(Function(UserStruct) updateFn) {
    updateFn(user ??= UserStruct());
  }

  String? token;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for newpassword widget.
  FocusNode? newpasswordFocusNode;
  TextEditingController? newpasswordTextController;
  late bool newpasswordVisibility;
  String? Function(BuildContext, String?)? newpasswordTextControllerValidator;
  String? _newpasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'New password is required!';
    }

    return null;
  }

  // State field(s) for confirmpassword widget.
  FocusNode? confirmpasswordFocusNode;
  TextEditingController? confirmpasswordTextController;
  late bool confirmpasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmpasswordTextControllerValidator;
  String? _confirmpasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm password is required!';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (forgotPass API)] action in btnLogin widget.
  ApiCallResponse? apiResult1s5;

  @override
  void initState(BuildContext context) {
    newpasswordVisibility = false;
    newpasswordTextControllerValidator = _newpasswordTextControllerValidator;
    confirmpasswordVisibility = false;
    confirmpasswordTextControllerValidator =
        _confirmpasswordTextControllerValidator;
  }

  @override
  void dispose() {
    newpasswordFocusNode?.dispose();
    newpasswordTextController?.dispose();

    confirmpasswordFocusNode?.dispose();
    confirmpasswordTextController?.dispose();
  }
}
