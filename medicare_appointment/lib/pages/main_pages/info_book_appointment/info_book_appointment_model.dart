import '/components/column_appointment_date/column_appointment_date_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'info_book_appointment_widget.dart' show InfoBookAppointmentWidget;
import 'package:flutter/material.dart';

class InfoBookAppointmentModel
    extends FlutterFlowModel<InfoBookAppointmentWidget> {
  ///  Local state fields for this page.

  List<String> lstDate = [];
  void addToLstDate(String item) => lstDate.add(item);
  void removeFromLstDate(String item) => lstDate.remove(item);
  void removeAtIndexFromLstDate(int index) => lstDate.removeAt(index);
  void insertAtIndexInLstDate(int index, String item) =>
      lstDate.insert(index, item);
  void updateLstDateAtIndex(int index, Function(String) updateFn) =>
      lstDate[index] = updateFn(lstDate[index]);

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for columnAppointmentDate component.
  late ColumnAppointmentDateModel columnAppointmentDateModel;
  // State field(s) for txtLyDo widget.
  FocusNode? txtLyDoFocusNode;
  TextEditingController? txtLyDoTextController;
  String? Function(BuildContext, String?)? txtLyDoTextControllerValidator;
  // State field(s) for ChoiceChips widget.
  FormFieldController<List<String>>? choiceChipsValueController;
  String? get choiceChipsValue =>
      choiceChipsValueController?.value?.firstOrNull;
  set choiceChipsValue(String? val) =>
      choiceChipsValueController?.value = val != null ? [val] : [];

  @override
  void initState(BuildContext context) {
    columnAppointmentDateModel =
        createModel(context, () => ColumnAppointmentDateModel());
  }

  @override
  void dispose() {
    columnAppointmentDateModel.dispose();
    txtLyDoFocusNode?.dispose();
    txtLyDoTextController?.dispose();
  }
}
