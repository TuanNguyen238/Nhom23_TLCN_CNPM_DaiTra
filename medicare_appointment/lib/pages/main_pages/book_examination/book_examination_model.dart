import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'book_examination_widget.dart' show BookExaminationWidget;
import 'package:flutter/material.dart';

class BookExaminationModel extends FlutterFlowModel<BookExaminationWidget> {
  ///  Local state fields for this page.

  String patientCode = '';

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
