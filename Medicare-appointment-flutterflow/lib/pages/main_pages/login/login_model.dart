import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  Local state fields for this page.

  bool? status;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (introspect API)] action in login widget.
  ApiCallResponse? introspectOutput;
  // Stores action output result for [Backend Call - API (login API)] action in btnLogin widget.
  ApiCallResponse? loginOutput;
  // State field(s) for tfPhoneNumber widget.
  FocusNode? tfPhoneNumberFocusNode;
  TextEditingController? tfPhoneNumberTextController;
  String? Function(BuildContext, String?)? tfPhoneNumberTextControllerValidator;
  String? _tfPhoneNumberTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'or6ok7f5' /* Vui lòng nhập số điện thoại! */,
      );
    }

    if (val.length < 10) {
      return FFLocalizations.of(context).getText(
        'qksjtuy8' /* Số điện thoại phải đúng 10 chữ... */,
      );
    }
    if (val.length > 10) {
      return FFLocalizations.of(context).getText(
        'rvybcevd' /* Số điện thoại phải đúng 10 chữ... */,
      );
    }

    return null;
  }

  // State field(s) for tfPassword widget.
  FocusNode? tfPasswordFocusNode;
  TextEditingController? tfPasswordTextController;
  late bool tfPasswordVisibility;
  String? Function(BuildContext, String?)? tfPasswordTextControllerValidator;
  String? _tfPasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'kzw6r103' /* Vui lòng nhập mật khẩu! */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    tfPhoneNumberTextControllerValidator =
        _tfPhoneNumberTextControllerValidator;
    tfPasswordVisibility = false;
    tfPasswordTextControllerValidator = _tfPasswordTextControllerValidator;
  }

  @override
  void dispose() {
    tfPhoneNumberFocusNode?.dispose();
    tfPhoneNumberTextController?.dispose();

    tfPasswordFocusNode?.dispose();
    tfPasswordTextController?.dispose();
  }
}
