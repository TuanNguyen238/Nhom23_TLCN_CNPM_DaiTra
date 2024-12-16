import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'forgot_pass_widget.dart' show ForgotPassWidget;
import 'package:flutter/material.dart';

class ForgotPassModel extends FlutterFlowModel<ForgotPassWidget> {
  ///  Local state fields for this page.

  UserStruct? user;
  void updateUserStruct(Function(UserStruct) updateFn) {
    updateFn(user ??= UserStruct());
  }

  String? token;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for phonenumber widget.
  FocusNode? phonenumberFocusNode;
  TextEditingController? phonenumberTextController;
  String? Function(BuildContext, String?)? phonenumberTextControllerValidator;
  String? _phonenumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required!';
    }

    if (val.length < 10) {
      return 'The phone number length must be exactly 10 digits.';
    }
    if (val.length > 10) {
      return 'The phone number length must be exactly 10 digits.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (requestOTP API)] action in btnLogin widget.
  ApiCallResponse? apiResultz4u;

  @override
  void initState(BuildContext context) {
    phonenumberTextControllerValidator = _phonenumberTextControllerValidator;
  }

  @override
  void dispose() {
    phonenumberFocusNode?.dispose();
    phonenumberTextController?.dispose();
  }
}
