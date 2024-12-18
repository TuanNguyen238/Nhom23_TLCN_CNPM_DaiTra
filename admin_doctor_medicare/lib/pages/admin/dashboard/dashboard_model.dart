import '/backend/api_requests/api_calls.dart';
import '/components/admin/nav_menu/nav_menu_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  Local state fields for this page.

  String option = '1';

  String? txtDate;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (countUser API)] action in Dashboard widget.
  ApiCallResponse? getCountUserOutput;
  // Stores action output result for [Backend Call - API (countMedicine API)] action in Dashboard widget.
  ApiCallResponse? getCountMedicineOutput;
  // Stores action output result for [Backend Call - API (countRoom API)] action in Dashboard widget.
  ApiCallResponse? getCountRoomOutput;
  // Stores action output result for [Backend Call - API (countUserMonth API)] action in Dashboard widget.
  ApiCallResponse? getCountMonthUserOutput;
  // Stores action output result for [Backend Call - API (getMonthMedicine API)] action in Dashboard widget.
  ApiCallResponse? getMedicineMonthOutput;
  // Stores action output result for [Backend Call - API (getStatisticRecord API)] action in Dashboard widget.
  ApiCallResponse? getStatisticOutput;
  // Model for NavMenu component.
  late NavMenuModel navMenuModel;
  DateTime? datePicked;
  // Stores action output result for [Backend Call - API (getStatisticRecord API)] action in ContainerDate widget.
  ApiCallResponse? getStatisticDateOutput;

  @override
  void initState(BuildContext context) {
    navMenuModel = createModel(context, () => NavMenuModel());
  }

  @override
  void dispose() {
    navMenuModel.dispose();
  }
}
