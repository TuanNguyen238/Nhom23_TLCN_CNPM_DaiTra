import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'detail_infor_appointment_model.dart';
export 'detail_infor_appointment_model.dart';

class DetailInforAppointmentWidget extends StatefulWidget {
  const DetailInforAppointmentWidget({
    super.key,
    required this.record,
  });

  final RecordStruct? record;

  @override
  State<DetailInforAppointmentWidget> createState() =>
      _DetailInforAppointmentWidgetState();
}

class _DetailInforAppointmentWidgetState
    extends State<DetailInforAppointmentWidget> {
  late DetailInforAppointmentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetailInforAppointmentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      children: [
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Icon(
                        Icons.medical_services_outlined,
                        color: Color(0xFF204A9C),
                        size: 24.0,
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'lza580a9' /* Dịch vụ khám */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(const SizedBox(width: 5.0)),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      '4z1intpv' /* Khám tim */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 0.5,
              color: Color(0x4457636C),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15.0, 8.0, 15.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Icon(
                        Icons.document_scanner_outlined,
                        color: Color(0xFF204A9C),
                        size: 24.0,
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'e43j8e7q' /* Mã cuộc hẹn */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(const SizedBox(width: 5.0)),
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget.record?.recordCode,
                      'R00000000',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 0.5,
              color: Color(0x4457636C),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15.0, 8.0, 15.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Icon(
                        Icons.access_time,
                        color: Color(0xFF204A9C),
                        size: 24.0,
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          '079cb747' /* Giờ khám */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(const SizedBox(width: 5.0)),
                  ),
                  Text(
                    '${widget.record?.examRoom.examTime} ${widget.record?.examRoom.examDate}',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 0.5,
              color: Color(0x4457636C),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15.0, 8.0, 15.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: Color(0xFF204A9C),
                        size: 24.0,
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'ro54u10e' /* Địa điểm */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(const SizedBox(width: 5.0)),
                  ),
                  Flexible(
                    child: Text(
                      'Phòng số: ${widget.record?.examRoom.roomNumber.toString()}',
                      textAlign: TextAlign.end,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 0.5,
              color: Color(0x4457636C),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15.0, 8.0, 15.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Icon(
                        Icons.error_outline,
                        color: Color(0xFF204A9C),
                        size: 24.0,
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          '3lwgs2v2' /* Trạng thái */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(const SizedBox(width: 5.0)),
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget.record?.status,
                      'status',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 0.5,
              color: Color(0x4457636C),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15.0, 8.0, 15.0, 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Icon(
                        Icons.payments_outlined,
                        color: Color(0xFF204A9C),
                        size: 24.0,
                      ),
                      Text(
                        FFLocalizations.of(context).getText(
                          'ez877cwg' /* Giá */,
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(const SizedBox(width: 5.0)),
                  ),
                  Text(
                    FFLocalizations.of(context).getText(
                      'n73001v4' /* 150.000 */,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: const Color(0xFFB0271D),
                          letterSpacing: 0.0,
                        ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 0.5,
              color: Color(0x4457636C),
            ),
          ],
        ),
      ],
    );
  }
}
