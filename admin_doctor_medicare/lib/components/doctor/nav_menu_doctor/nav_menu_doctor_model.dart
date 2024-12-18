import '/components/admin/dialog_logout/dialog_logout_widget.dart';
import '/components/admin/menu_option/menu_option_widget.dart';
import '/components/doctor/menu_option_doctor/menu_option_doctor_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'nav_menu_doctor_widget.dart' show NavMenuDoctorWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NavMenuDoctorModel extends FlutterFlowModel<NavMenuDoctorWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for MenuOptionDoctor component.
  late MenuOptionDoctorModel menuOptionDoctorModel1;
  // Model for MenuOptionDoctor component.
  late MenuOptionDoctorModel menuOptionDoctorModel2;
  // Model for MenuOptionDoctor component.
  late MenuOptionDoctorModel menuOptionDoctorModel3;
  // Model for MenuOption component.
  late MenuOptionModel menuOptionModel1;
  // Model for MenuOption component.
  late MenuOptionModel menuOptionModel2;

  @override
  void initState(BuildContext context) {
    menuOptionDoctorModel1 =
        createModel(context, () => MenuOptionDoctorModel());
    menuOptionDoctorModel2 =
        createModel(context, () => MenuOptionDoctorModel());
    menuOptionDoctorModel3 =
        createModel(context, () => MenuOptionDoctorModel());
    menuOptionModel1 = createModel(context, () => MenuOptionModel());
    menuOptionModel2 = createModel(context, () => MenuOptionModel());
  }

  @override
  void dispose() {
    menuOptionDoctorModel1.dispose();
    menuOptionDoctorModel2.dispose();
    menuOptionDoctorModel3.dispose();
    menuOptionModel1.dispose();
    menuOptionModel2.dispose();
  }
}
