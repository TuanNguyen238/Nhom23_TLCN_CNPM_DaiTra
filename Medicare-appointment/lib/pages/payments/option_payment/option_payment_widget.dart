import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/backend/schema/structs/index.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'option_payment_model.dart';
export 'option_payment_model.dart';

class OptionPaymentWidget extends StatefulWidget {
  const OptionPaymentWidget({
    super.key,
    required this.date,
    required this.time,
    required this.patientCode,
    required this.reasonForVisit,
  });

  final String? date;
  final String? time;
  final String? patientCode;
  final String? reasonForVisit;

  @override
  State<OptionPaymentWidget> createState() => _OptionPaymentWidgetState();
}

class _OptionPaymentWidgetState extends State<OptionPaymentWidget> {
  late OptionPaymentModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OptionPaymentModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          iconTheme:
              IconThemeData(color: FlutterFlowTheme.of(context).primaryText),
          automaticallyImplyLeading: true,
          title: Align(
            alignment: const AlignmentDirectional(-1.0, 0.0),
            child: Text(
              FFLocalizations.of(context).getText(
                'g8jli1j7' /* Phương thức thanh toán */,
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Readex Pro',
                    fontSize: 16.0,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w600,
                  ),
            ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.15,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(10.0, 20.0, 10.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    _model.apiResult3kj = await BookAPICall.call(
                      patientCode: widget.patientCode,
                      examDate: widget.date,
                      examTime: widget.time,
                      reasonForVisit: widget.reasonForVisit,
                      authToken: FFAppState().token,
                      paid: false,
                    );

                    if ((_model.apiResult3kj?.succeeded ?? true)) {
                      await actions.showToastMessage(
                        context,
                        'Đăng ký thành công',
                        true,
                        false,
                      );

                      context.goNamed(
                        'pageResultAppointment',
                        queryParameters: {
                          'record': serializeParam(
                            RecordStruct.maybeFromMap(getJsonField(
                              (_model.apiResult3kj?.jsonBody ?? ''),
                              r'''$.data''',
                            )),
                            ParamType.DataStruct,
                          ),
                          'status': serializeParam(
                            true,
                            ParamType.bool,
                          ),
                        }.withoutNulls,
                      );
                    } else {
                      await actions.showToastMessage(
                        context,
                        'Lổi ',
                        false,
                        false,
                      );
                    }

                    safeSetState(() {});
                  },
                  text: FFLocalizations.of(context).getText(
                    'jo3gp2da' /* Tiền mặt */,
                  ),
                  icon: const Icon(
                    Icons.payments_outlined,
                    size: 15.0,
                  ),
                  options: FFButtonOptions(
                    height: 60.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFF204A9C),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed(
                      'paymentBank',
                      queryParameters: {
                        'date': serializeParam(
                          widget.date,
                          ParamType.String,
                        ),
                        'time': serializeParam(
                          widget.time,
                          ParamType.String,
                        ),
                        'patientCode': serializeParam(
                          widget.patientCode,
                          ParamType.String,
                        ),
                        'reasonForVist': serializeParam(
                          widget.reasonForVisit,
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );
                  },
                  text: FFLocalizations.of(context).getText(
                    'c60126xp' /* Tài khoản ngân hàng */,
                  ),
                  icon: const Icon(
                    Icons.payment_outlined,
                    size: 15.0,
                  ),
                  options: FFButtonOptions(
                    height: 60.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0xFF204A9C),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.white,
                          letterSpacing: 0.0,
                        ),
                    elevation: 0.0,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ].divide(const SizedBox(height: 20.0)),
            ),
          ),
        ),
      ),
    );
  }
}
