import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'forgot_password_phone_number_widget.dart'
    show ForgotPasswordPhoneNumberWidget;
import 'package:flutter/material.dart';

class ForgotPasswordPhoneNumberModel
    extends FlutterFlowModel<ForgotPasswordPhoneNumberWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtPhonenumber widget.
  FocusNode? txtPhonenumberFocusNode;
  TextEditingController? txtPhonenumberTextController;
  String? Function(BuildContext, String?)?
      txtPhonenumberTextControllerValidator;
  String? _txtPhonenumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '1xapul95' /* Vui lòng nhập số điện thoại! */,
      );
    }

    if (val.length < 10) {
      return FFLocalizations.of(context).getText(
        'kq5q6q2x' /* Số điện thoại phải có đúng 10 ... */,
      );
    }
    if (val.length > 10) {
      return FFLocalizations.of(context).getText(
        't3cmydyg' /* Số điện thoại phải có đúng 10 ... */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (request OTP API)] action in Button widget.
  ApiCallResponse? requestOutput;

  @override
  void initState(BuildContext context) {
    txtPhonenumberTextControllerValidator =
        _txtPhonenumberTextControllerValidator;
  }

  @override
  void dispose() {
    txtPhonenumberFocusNode?.dispose();
    txtPhonenumberTextController?.dispose();
  }
}
