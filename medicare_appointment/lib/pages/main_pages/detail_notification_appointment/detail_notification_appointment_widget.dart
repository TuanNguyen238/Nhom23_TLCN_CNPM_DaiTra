import '/backend/schema/structs/index.dart';
import '/components/detail_infor_appointment/detail_infor_appointment_widget.dart';
import '/components/item_info_patient/item_info_patient_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'detail_notification_appointment_model.dart';
export 'detail_notification_appointment_model.dart';

class DetailNotificationAppointmentWidget extends StatefulWidget {
  const DetailNotificationAppointmentWidget({
    super.key,
    required this.record,
  });

  final RecordStruct? record;

  @override
  State<DetailNotificationAppointmentWidget> createState() =>
      _DetailNotificationAppointmentWidgetState();
}

class _DetailNotificationAppointmentWidgetState
    extends State<DetailNotificationAppointmentWidget> {
  late DetailNotificationAppointmentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetailNotificationAppointmentModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          iconTheme:
              IconThemeData(color: FlutterFlowTheme.of(context).primaryText),
          automaticallyImplyLeading: true,
          title: Text(
            FFLocalizations.of(context).getText(
              '9evtyp8l' /* Chi tiết cuộc hẹn */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.15,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.itemInfoPatientModel,
                updateCallback: () => safeSetState(() {}),
                child: ItemInfoPatientWidget(
                  patient: widget.record?.patient,
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(15.0, 20.0, 15.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      FFLocalizations.of(context).getText(
                        'xnzia3gp' /* Thông tin cuộc hẹn */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    Card(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: const Color(0xFF204A9C),
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          FFLocalizations.of(context).getText(
                            'ufve21x9' /* 4 tháng trước */,
                          ),
                          textAlign: TextAlign.justify,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 11.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: wrapWithModel(
                  model: _model.detailInforAppointmentModel,
                  updateCallback: () => safeSetState(() {}),
                  child: DetailInforAppointmentWidget(
                    record: widget.record!,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
