import '/components/admin/menu_option/menu_option_widget.dart';
import '/components/staff/menu_option_staff/menu_option_staff_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'nav_menu_staff_widget.dart' show NavMenuStaffWidget;
import 'package:flutter/material.dart';

class NavMenuStaffModel extends FlutterFlowModel<NavMenuStaffWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for MenuOptionStaff component.
  late MenuOptionStaffModel menuOptionStaffModel;
  // Model for MenuOption component.
  late MenuOptionModel menuOptionModel1;
  // Model for MenuOption component.
  late MenuOptionModel menuOptionModel2;

  @override
  void initState(BuildContext context) {
    menuOptionStaffModel = createModel(context, () => MenuOptionStaffModel());
    menuOptionModel1 = createModel(context, () => MenuOptionModel());
    menuOptionModel2 = createModel(context, () => MenuOptionModel());
  }

  @override
  void dispose() {
    menuOptionStaffModel.dispose();
    menuOptionModel1.dispose();
    menuOptionModel2.dispose();
  }
}
