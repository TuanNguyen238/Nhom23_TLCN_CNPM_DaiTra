import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'page_result_appointment_model.dart';
export 'page_result_appointment_model.dart';

class PageResultAppointmentWidget extends StatefulWidget {
  const PageResultAppointmentWidget({
    super.key,
    required this.record,
    required this.status,
  });

  final RecordStruct? record;
  final bool? status;

  @override
  State<PageResultAppointmentWidget> createState() =>
      _PageResultAppointmentWidgetState();
}

class _PageResultAppointmentWidgetState
    extends State<PageResultAppointmentWidget> {
  late PageResultAppointmentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PageResultAppointmentModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: const IconThemeData(color: Color(0xFF15161E)),
          automaticallyImplyLeading: true,
          title: Text(
            FFLocalizations.of(context).getText(
              'hcvse35u' /* Chi tiết cuộc hẹn */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Plus Jakarta Sans',
                  color: const Color(0xFF15161E),
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            alignment: const AlignmentDirectional(0.0, 1.0),
            children: [
              SizedBox(
                width: double.infinity,
                height: double.infinity,
                child: custom_widgets.ResultAppointmentWidget(
                  width: double.infinity,
                  height: double.infinity,
                  record: widget.record,
                  action: () async {
                    await actions.showToastMessage(
                      context,
                      'Downloaded',
                      true,
                      true,
                    );
                    _model.statusDownload = false;
                    safeSetState(() {});
                  },
                ),
              ),
              if (widget.status == true)
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 16.0),
                          child: FFButtonWidget(
                            onPressed: () async {
                              context.goNamed('homePage');
                            },
                            text: FFLocalizations.of(context).getText(
                              'sddfffn7' /* Trang chủ */,
                            ),
                            options: FFButtonOptions(
                              height: 50.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  16.0, 0.0, 16.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              textStyle: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    letterSpacing: 0.0,
                                  ),
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
