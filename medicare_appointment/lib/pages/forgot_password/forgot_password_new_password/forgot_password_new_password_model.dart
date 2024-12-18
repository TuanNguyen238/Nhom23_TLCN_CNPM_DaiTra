import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'forgot_password_new_password_widget.dart'
    show ForgotPasswordNewPasswordWidget;
import 'package:flutter/material.dart';

class ForgotPasswordNewPasswordModel
    extends FlutterFlowModel<ForgotPasswordNewPasswordWidget> {
  ///  Local state fields for this page.

  bool? checkConfirmPassword = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtUpdatePass widget.
  FocusNode? txtUpdatePassFocusNode;
  TextEditingController? txtUpdatePassTextController;
  late bool txtUpdatePassVisibility;
  String? Function(BuildContext, String?)? txtUpdatePassTextControllerValidator;
  String? _txtUpdatePassTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '8o8jod1g' /* Vui lòng nhập mật khẩu! */,
      );
    }

    return null;
  }

  // State field(s) for txtConfimUpdatePass widget.
  FocusNode? txtConfimUpdatePassFocusNode;
  TextEditingController? txtConfimUpdatePassTextController;
  late bool txtConfimUpdatePassVisibility;
  String? Function(BuildContext, String?)?
      txtConfimUpdatePassTextControllerValidator;
  String? _txtConfimUpdatePassTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'h0vg3r1o' /* Vui lòng nhập mật khẩu xác nhậ... */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (forgotpass API)] action in Button widget.
  ApiCallResponse? forgotOutput;

  @override
  void initState(BuildContext context) {
    txtUpdatePassVisibility = false;
    txtUpdatePassTextControllerValidator =
        _txtUpdatePassTextControllerValidator;
    txtConfimUpdatePassVisibility = false;
    txtConfimUpdatePassTextControllerValidator =
        _txtConfimUpdatePassTextControllerValidator;
  }

  @override
  void dispose() {
    txtUpdatePassFocusNode?.dispose();
    txtUpdatePassTextController?.dispose();

    txtConfimUpdatePassFocusNode?.dispose();
    txtConfimUpdatePassTextController?.dispose();
  }
}
