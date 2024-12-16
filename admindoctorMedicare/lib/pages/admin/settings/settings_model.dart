import '/backend/api_requests/api_calls.dart';
import '/components/admin/nav_menu/nav_menu_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'settings_widget.dart' show SettingsWidget;
import 'package:flutter/material.dart';

class SettingsModel extends FlutterFlowModel<SettingsWidget> {
  ///  Local state fields for this page.

  bool? checkPass;

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
  String? _usernameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Username is required!';
    }

    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required!';
    }

    return null;
  }

  // State field(s) for identifycard widget.
  FocusNode? identifycardFocusNode;
  TextEditingController? identifycardTextController;
  String? Function(BuildContext, String?)? identifycardTextControllerValidator;
  String? _identifycardTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Identifycard is required!';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (updateinfo API)] action in Button widget.
  ApiCallResponse? updateOutput;
  // State field(s) for currentpass widget.
  FocusNode? currentpassFocusNode;
  TextEditingController? currentpassTextController;
  late bool currentpassVisibility;
  String? Function(BuildContext, String?)? currentpassTextControllerValidator;
  String? _currentpassTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Current is required!';
    }

    return null;
  }

  // State field(s) for newpass widget.
  FocusNode? newpassFocusNode;
  TextEditingController? newpassTextController;
  late bool newpassVisibility;
  String? Function(BuildContext, String?)? newpassTextControllerValidator;
  String? _newpassTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'New password is required!';
    }

    return null;
  }

  // State field(s) for confirmpass widget.
  FocusNode? confirmpassFocusNode;
  TextEditingController? confirmpassTextController;
  late bool confirmpassVisibility;
  String? Function(BuildContext, String?)? confirmpassTextControllerValidator;
  String? _confirmpassTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirm password is required!';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (updatePassAdmin API)] action in Button widget.
  ApiCallResponse? updatePassOutput;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
    usernameTextControllerValidator = _usernameTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    identifycardTextControllerValidator = _identifycardTextControllerValidator;
    currentpassVisibility = false;
    currentpassTextControllerValidator = _currentpassTextControllerValidator;
    newpassVisibility = false;
    newpassTextControllerValidator = _newpassTextControllerValidator;
    confirmpassVisibility = false;
    confirmpassTextControllerValidator = _confirmpassTextControllerValidator;
  }

  @override
  void dispose() {
    navMenuModel.dispose();
    tabBarController?.dispose();
    usernameFocusNode?.dispose();
    usernameTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    identifycardFocusNode?.dispose();
    identifycardTextController?.dispose();

    currentpassFocusNode?.dispose();
    currentpassTextController?.dispose();

    newpassFocusNode?.dispose();
    newpassTextController?.dispose();

    confirmpassFocusNode?.dispose();
    confirmpassTextController?.dispose();
  }
}
