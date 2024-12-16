import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'reset_password_widget.dart' show ResetPasswordWidget;
import 'package:flutter/material.dart';

class ResetPasswordModel extends FlutterFlowModel<ResetPasswordWidget> {
  ///  Local state fields for this page.

  bool? checkConfirmPass = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtPass widget.
  FocusNode? txtPassFocusNode;
  TextEditingController? txtPassTextController;
  late bool txtPassVisibility;
  String? Function(BuildContext, String?)? txtPassTextControllerValidator;
  String? _txtPassTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'bjcyn0y4' /* Vui lòng nhập mật khẩu hiện tạ... */,
      );
    }

    return null;
  }

  // State field(s) for txtNewPass widget.
  FocusNode? txtNewPassFocusNode;
  TextEditingController? txtNewPassTextController;
  late bool txtNewPassVisibility;
  String? Function(BuildContext, String?)? txtNewPassTextControllerValidator;
  String? _txtNewPassTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'j8o4n1sh' /* Vui lòng nhập mật khẩu mới! */,
      );
    }

    return null;
  }

  // State field(s) for txtConfirmNewPass widget.
  FocusNode? txtConfirmNewPassFocusNode;
  TextEditingController? txtConfirmNewPassTextController;
  late bool txtConfirmNewPassVisibility;
  String? Function(BuildContext, String?)?
      txtConfirmNewPassTextControllerValidator;
  String? _txtConfirmNewPassTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '8eahgqpz' /* Vui lòng nhập mật khẩu xác nhậ... */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (updatepass API)] action in Button widget.
  ApiCallResponse? updateOutput;

  @override
  void initState(BuildContext context) {
    txtPassVisibility = false;
    txtPassTextControllerValidator = _txtPassTextControllerValidator;
    txtNewPassVisibility = false;
    txtNewPassTextControllerValidator = _txtNewPassTextControllerValidator;
    txtConfirmNewPassVisibility = false;
    txtConfirmNewPassTextControllerValidator =
        _txtConfirmNewPassTextControllerValidator;
  }

  @override
  void dispose() {
    txtPassFocusNode?.dispose();
    txtPassTextController?.dispose();

    txtNewPassFocusNode?.dispose();
    txtNewPassTextController?.dispose();

    txtConfirmNewPassFocusNode?.dispose();
    txtConfirmNewPassTextController?.dispose();
  }
}
