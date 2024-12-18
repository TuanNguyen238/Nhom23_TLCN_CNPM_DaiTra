import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/item_info_patient/item_info_patient_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'history_examination_model.dart';
export 'history_examination_model.dart';

class HistoryExaminationWidget extends StatefulWidget {
  const HistoryExaminationWidget({super.key});

  @override
  State<HistoryExaminationWidget> createState() =>
      _HistoryExaminationWidgetState();
}

class _HistoryExaminationWidgetState extends State<HistoryExaminationWidget>
    with TickerProviderStateMixin {
  late HistoryExaminationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HistoryExaminationModel());

    animationsMap.addAll({
      'columnOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
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
              'u9o3d4zv' /* Hồ sơ bệnh án */,
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
          elevation: 0.14,
        ),
        body: SafeArea(
          top: true,
          child: FutureBuilder<ApiCallResponse>(
            future: GetAllPatientAPICall.call(
              authToken: FFAppState().token,
            ),
            builder: (context, snapshot) {
              // Customize what your widget looks like when it's loading.
              if (!snapshot.hasData) {
                return const Center(
                  child: SizedBox(
                    width: 60.0,
                    height: 60.0,
                    child: SpinKitChasingDots(
                      color: Color(0xFF204A9C),
                      size: 60.0,
                    ),
                  ),
                );
              }
              final columnGetAllPatientAPIResponse = snapshot.data!;

              return Builder(
                builder: (context) {
                  final patients = (getJsonField(
                        columnGetAllPatientAPIResponse.jsonBody,
                        r'''$.data''',
                        true,
                      )
                              ?.toList()
                              .map<PatientStruct?>(PatientStruct.maybeFromMap)
                              .toList() as Iterable<PatientStruct?>)
                          .withoutNulls
                          .toList() ??
                      [];

                  return SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(patients.length, (patientsIndex) {
                        final patientsItem = patients[patientsIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'extensionExamination',
                              queryParameters: {
                                'patientCode': serializeParam(
                                  patientsItem.patientCode,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: wrapWithModel(
                            model: _model.itemInfoPatientModels.getModel(
                              patientsItem.id,
                              patientsIndex,
                            ),
                            updateCallback: () => safeSetState(() {}),
                            child: ItemInfoPatientWidget(
                              key: Key(
                                'Keydn1_${patientsItem.id}',
                              ),
                              patient: patientsItem,
                            ),
                          ),
                        );
                      }),
                    ),
                  ).animateOnPageLoad(
                      animationsMap['columnOnPageLoadAnimation']!);
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
