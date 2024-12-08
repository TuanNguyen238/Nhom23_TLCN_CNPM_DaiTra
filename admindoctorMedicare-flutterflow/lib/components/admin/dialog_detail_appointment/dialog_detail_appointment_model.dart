import '/flutter_flow/flutter_flow_util.dart';
import 'dialog_detail_appointment_widget.dart'
    show DialogDetailAppointmentWidget;
import 'package:flutter/material.dart';

class DialogDetailAppointmentModel
    extends FlutterFlowModel<DialogDetailAppointmentWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for patientname widget.
  FocusNode? patientnameFocusNode;
  TextEditingController? patientnameTextController;
  String? Function(BuildContext, String?)? patientnameTextControllerValidator;
  // State field(s) for patientcode widget.
  FocusNode? patientcodeFocusNode;
  TextEditingController? patientcodeTextController;
  String? Function(BuildContext, String?)? patientcodeTextControllerValidator;
  // State field(s) for dateofbirth widget.
  FocusNode? dateofbirthFocusNode;
  TextEditingController? dateofbirthTextController;
  String? Function(BuildContext, String?)? dateofbirthTextControllerValidator;
  // State field(s) for phonenumber widget.
  FocusNode? phonenumberFocusNode;
  TextEditingController? phonenumberTextController;
  String? Function(BuildContext, String?)? phonenumberTextControllerValidator;
  // State field(s) for address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressTextController;
  String? Function(BuildContext, String?)? addressTextControllerValidator;
  // State field(s) for examinationService widget.
  FocusNode? examinationServiceFocusNode;
  TextEditingController? examinationServiceTextController;
  String? Function(BuildContext, String?)?
      examinationServiceTextControllerValidator;
  // State field(s) for status widget.
  FocusNode? statusFocusNode;
  TextEditingController? statusTextController;
  String? Function(BuildContext, String?)? statusTextControllerValidator;
  // State field(s) for examinatioCode widget.
  FocusNode? examinatioCodeFocusNode;
  TextEditingController? examinatioCodeTextController;
  String? Function(BuildContext, String?)?
      examinatioCodeTextControllerValidator;
  // State field(s) for examinationlocation widget.
  FocusNode? examinationlocationFocusNode;
  TextEditingController? examinationlocationTextController;
  String? Function(BuildContext, String?)?
      examinationlocationTextControllerValidator;
  // State field(s) for examinationTime widget.
  FocusNode? examinationTimeFocusNode;
  TextEditingController? examinationTimeTextController;
  String? Function(BuildContext, String?)?
      examinationTimeTextControllerValidator;
  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // State field(s) for paymentstatus widget.
  FocusNode? paymentstatusFocusNode;
  TextEditingController? paymentstatusTextController;
  String? Function(BuildContext, String?)? paymentstatusTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    patientnameFocusNode?.dispose();
    patientnameTextController?.dispose();

    patientcodeFocusNode?.dispose();
    patientcodeTextController?.dispose();

    dateofbirthFocusNode?.dispose();
    dateofbirthTextController?.dispose();

    phonenumberFocusNode?.dispose();
    phonenumberTextController?.dispose();

    addressFocusNode?.dispose();
    addressTextController?.dispose();

    examinationServiceFocusNode?.dispose();
    examinationServiceTextController?.dispose();

    statusFocusNode?.dispose();
    statusTextController?.dispose();

    examinatioCodeFocusNode?.dispose();
    examinatioCodeTextController?.dispose();

    examinationlocationFocusNode?.dispose();
    examinationlocationTextController?.dispose();

    examinationTimeFocusNode?.dispose();
    examinationTimeTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    paymentstatusFocusNode?.dispose();
    paymentstatusTextController?.dispose();
  }
}
