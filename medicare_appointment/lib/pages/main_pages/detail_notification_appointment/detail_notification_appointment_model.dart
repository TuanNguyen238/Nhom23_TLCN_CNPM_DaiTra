import '/components/detail_infor_appointment/detail_infor_appointment_widget.dart';
import '/components/item_info_patient/item_info_patient_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detail_notification_appointment_widget.dart'
    show DetailNotificationAppointmentWidget;
import 'package:flutter/material.dart';

class DetailNotificationAppointmentModel
    extends FlutterFlowModel<DetailNotificationAppointmentWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for itemInfoPatient component.
  late ItemInfoPatientModel itemInfoPatientModel;
  // Model for detailInforAppointment component.
  late DetailInforAppointmentModel detailInforAppointmentModel;

  @override
  void initState(BuildContext context) {
    itemInfoPatientModel = createModel(context, () => ItemInfoPatientModel());
    detailInforAppointmentModel =
        createModel(context, () => DetailInforAppointmentModel());
  }

  @override
  void dispose() {
    itemInfoPatientModel.dispose();
    detailInforAppointmentModel.dispose();
  }
}
