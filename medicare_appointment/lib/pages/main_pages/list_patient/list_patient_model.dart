import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'list_patient_widget.dart' show ListPatientWidget;
import 'package:flutter/material.dart';

class ListPatientModel extends FlutterFlowModel<ListPatientWidget> {
  ///  Local state fields for this page.

  List<PatientStruct> lstPatients = [];
  void addToLstPatients(PatientStruct item) => lstPatients.add(item);
  void removeFromLstPatients(PatientStruct item) => lstPatients.remove(item);
  void removeAtIndexFromLstPatients(int index) => lstPatients.removeAt(index);
  void insertAtIndexInLstPatients(int index, PatientStruct item) =>
      lstPatients.insert(index, item);
  void updateLstPatientsAtIndex(int index, Function(PatientStruct) updateFn) =>
      lstPatients[index] = updateFn(lstPatients[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
