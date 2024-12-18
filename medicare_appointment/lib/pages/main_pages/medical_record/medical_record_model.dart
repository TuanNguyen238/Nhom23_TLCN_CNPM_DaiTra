import '/components/item_info_patient/item_info_patient_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'medical_record_widget.dart' show MedicalRecordWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class MedicalRecordModel extends FlutterFlowModel<MedicalRecordWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for itemInfoPatient component.
  late ItemInfoPatientModel itemInfoPatientModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController4;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController5;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController6;

  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController7;

  @override
  void initState(BuildContext context) {
    itemInfoPatientModel = createModel(context, () => ItemInfoPatientModel());
  }

  @override
  void dispose() {
    itemInfoPatientModel.dispose();
    expandableExpandableController1.dispose();
    expandableExpandableController2.dispose();
    expandableExpandableController3.dispose();
    expandableExpandableController4.dispose();
    expandableExpandableController5.dispose();
    expandableExpandableController6.dispose();
    expandableExpandableController7.dispose();
  }
}
