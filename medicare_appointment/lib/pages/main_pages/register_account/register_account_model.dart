import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'register_account_widget.dart' show RegisterAccountWidget;
import 'package:flutter/material.dart';

class RegisterAccountModel extends FlutterFlowModel<RegisterAccountWidget> {
  ///  Local state fields for this page.

  bool? passwordMatch = true;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtName widget.
  FocusNode? txtNameFocusNode;
  TextEditingController? txtNameTextController;
  String? Function(BuildContext, String?)? txtNameTextControllerValidator;
  String? _txtNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'jtrrtqd1' /* Vui lòng nhập họ tên! */,
      );
    }

    return null;
  }

  // State field(s) for txtPhonenumberRegis widget.
  FocusNode? txtPhonenumberRegisFocusNode;
  TextEditingController? txtPhonenumberRegisTextController;
  String? Function(BuildContext, String?)?
      txtPhonenumberRegisTextControllerValidator;
  String? _txtPhonenumberRegisTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'ol4drxnz' /* Vui lòng nhập số điện thoại! */,
      );
    }

    if (val.length < 10) {
      return FFLocalizations.of(context).getText(
        '8c17h3zm' /* Số điện thoại phải đúng 10 chữ... */,
      );
    }
    if (val.length > 10) {
      return FFLocalizations.of(context).getText(
        'g7dzs5a8' /* Số điện thoại phải đúng 10 chữ... */,
      );
    }

    return null;
  }

  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  String? _txtEmailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'mmulrieb' /* Vui lòng nhập email! */,
      );
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return FFLocalizations.of(context).getText(
        'l9ekgcsd' /* Email không đúng định dạng! */,
      );
    }
    return null;
  }

  // State field(s) for txtCCCD widget.
  FocusNode? txtCCCDFocusNode;
  TextEditingController? txtCCCDTextController;
  String? Function(BuildContext, String?)? txtCCCDTextControllerValidator;
  String? _txtCCCDTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '7qzz3nzk' /* Vui lòng nhập CCCD! */,
      );
    }

    if (val.length < 12) {
      return FFLocalizations.of(context).getText(
        'ufs5uk9s' /* CCCD phải có đúng 12 chữ số! */,
      );
    }
    if (val.length > 12) {
      return FFLocalizations.of(context).getText(
        'kmjtsvkg' /* CCCD phải có đúng 12 chữ số! */,
      );
    }

    return null;
  }

  // State field(s) for txtPasswordRegis widget.
  FocusNode? txtPasswordRegisFocusNode;
  TextEditingController? txtPasswordRegisTextController;
  late bool txtPasswordRegisVisibility;
  String? Function(BuildContext, String?)?
      txtPasswordRegisTextControllerValidator;
  String? _txtPasswordRegisTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        '6rou3h24' /* Vui lòng nhập mật khẩu! */,
      );
    }

    return null;
  }

  // State field(s) for txtConfimPassRegis widget.
  FocusNode? txtConfimPassRegisFocusNode;
  TextEditingController? txtConfimPassRegisTextController;
  late bool txtConfimPassRegisVisibility;
  String? Function(BuildContext, String?)?
      txtConfimPassRegisTextControllerValidator;
  String? _txtConfimPassRegisTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        't8xmb15z' /* Vui lòng nhập lại mật khẩu! */,
      );
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (register API)] action in Button widget.
  ApiCallResponse? registerOutput;

  @override
  void initState(BuildContext context) {
    txtNameTextControllerValidator = _txtNameTextControllerValidator;
    txtPhonenumberRegisTextControllerValidator =
        _txtPhonenumberRegisTextControllerValidator;
    txtEmailTextControllerValidator = _txtEmailTextControllerValidator;
    txtCCCDTextControllerValidator = _txtCCCDTextControllerValidator;
    txtPasswordRegisVisibility = false;
    txtPasswordRegisTextControllerValidator =
        _txtPasswordRegisTextControllerValidator;
    txtConfimPassRegisVisibility = false;
    txtConfimPassRegisTextControllerValidator =
        _txtConfimPassRegisTextControllerValidator;
  }

  @override
  void dispose() {
    txtNameFocusNode?.dispose();
    txtNameTextController?.dispose();

    txtPhonenumberRegisFocusNode?.dispose();
    txtPhonenumberRegisTextController?.dispose();

    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtCCCDFocusNode?.dispose();
    txtCCCDTextController?.dispose();

    txtPasswordRegisFocusNode?.dispose();
    txtPasswordRegisTextController?.dispose();

    txtConfimPassRegisFocusNode?.dispose();
    txtConfimPassRegisTextController?.dispose();
  }
}
