import '/components/item_info_patient/item_info_patient_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'history_examination_widget.dart' show HistoryExaminationWidget;
import 'package:flutter/material.dart';

class HistoryExaminationModel
    extends FlutterFlowModel<HistoryExaminationWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for itemInfoPatient dynamic component.
  late FlutterFlowDynamicModels<ItemInfoPatientModel> itemInfoPatientModels;

  @override
  void initState(BuildContext context) {
    itemInfoPatientModels =
        FlutterFlowDynamicModels(() => ItemInfoPatientModel());
  }

  @override
  void dispose() {
    itemInfoPatientModels.dispose();
  }
}
