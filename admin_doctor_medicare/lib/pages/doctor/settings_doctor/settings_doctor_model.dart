import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/doctor/nav_menu_doctor/nav_menu_doctor_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'settings_doctor_widget.dart' show SettingsDoctorWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SettingsDoctorModel extends FlutterFlowModel<SettingsDoctorWidget> {
  ///  Local state fields for this page.

  bool? checkpass;

  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // Model for NavMenuDoctor component.
  late NavMenuDoctorModel navMenuDoctorModel;
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
  // Stores action output result for [Backend Call - API (updateinfo API)] action in Button widget.
  ApiCallResponse? updateOutput;
  // State field(s) for currentpass widget.
  FocusNode? currentpassFocusNode;
  TextEditingController? currentpassTextController;
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
    navMenuDoctorModel = createModel(context, () => NavMenuDoctorModel());
    usernameTextControllerValidator = _usernameTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    currentpassTextControllerValidator = _currentpassTextControllerValidator;
    newpassTextControllerValidator = _newpassTextControllerValidator;
    confirmpassTextControllerValidator = _confirmpassTextControllerValidator;
  }

  @override
  void dispose() {
    navMenuDoctorModel.dispose();
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
