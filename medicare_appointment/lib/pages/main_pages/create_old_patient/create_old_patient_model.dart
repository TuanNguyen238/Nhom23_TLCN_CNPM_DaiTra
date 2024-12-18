import '/flutter_flow/flutter_flow_util.dart';
import 'create_old_patient_widget.dart' show CreateOldPatientWidget;
import 'package:flutter/material.dart';

class CreateOldPatientModel extends FlutterFlowModel<CreateOldPatientWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtMaBN widget.
  FocusNode? txtMaBNFocusNode;
  TextEditingController? txtMaBNTextController;
  String? Function(BuildContext, String?)? txtMaBNTextControllerValidator;
  String? _txtMaBNTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return FFLocalizations.of(context).getText(
        'phdrz5c0' /* Vui lòng nhập mã bệnh nhân! */,
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
        'j5awxqd0' /* Vui lòng nhập số điện thoại! */,
      );
    }

    if (val.length < 10) {
      return FFLocalizations.of(context).getText(
        'hzk948qm' /* Số điện thoại phải có đúng 10 ... */,
      );
    }
    if (val.length > 10) {
      return FFLocalizations.of(context).getText(
        'yufvy0oo' /* Số điện thoại phải có đúng 10 ... */,
      );
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    txtMaBNTextControllerValidator = _txtMaBNTextControllerValidator;
    txtSDTTextControllerValidator = _txtSDTTextControllerValidator;
  }

  @override
  void dispose() {
    txtMaBNFocusNode?.dispose();
    txtMaBNTextController?.dispose();

    txtSDTFocusNode?.dispose();
    txtSDTTextController?.dispose();
  }
}
