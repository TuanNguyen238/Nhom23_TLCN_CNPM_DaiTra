import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/item_history_examination/item_history_examination_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'extension_examination_model.dart';
export 'extension_examination_model.dart';

class ExtensionExaminationWidget extends StatefulWidget {
  const ExtensionExaminationWidget({
    super.key,
    required this.patientCode,
  });

  final String? patientCode;

  @override
  State<ExtensionExaminationWidget> createState() =>
      _ExtensionExaminationWidgetState();
}

class _ExtensionExaminationWidgetState extends State<ExtensionExaminationWidget>
    with TickerProviderStateMixin {
  late ExtensionExaminationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ExtensionExaminationModel());

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
              'zlnkmfzq' /* Lịch sử khám */,
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
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
            child: FutureBuilder<ApiCallResponse>(
              future: GetRecordByPatientCodeCall.call(
                patientCode: widget.patientCode,
                token: FFAppState().token,
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
                final columnGetRecordByPatientCodeResponse = snapshot.data!;

                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Builder(
                        builder: (context) {
                          final listExamination = (getJsonField(
                                columnGetRecordByPatientCodeResponse.jsonBody,
                                r'''$.data''',
                                true,
                              )
                                      ?.toList()
                                      .map<ExaminationStruct?>(
                                          ExaminationStruct.maybeFromMap)
                                      .toList() as Iterable<ExaminationStruct?>)
                                  .withoutNulls
                                  .where((e) => e.paid)
                                  .toList()
                                  .toList() ??
                              [];

                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: listExamination.length,
                            itemBuilder: (context, listExaminationIndex) {
                              final listExaminationItem =
                                  listExamination[listExaminationIndex];
                              return Visibility(
                                visible: listExaminationItem.status ==
                                    'Đã thực hiện',
                                child: wrapWithModel(
                                  model: _model.itemHistoryExaminationModels
                                      .getModel(
                                    listExaminationItem.id,
                                    listExaminationIndex,
                                  ),
                                  updateCallback: () => safeSetState(() {}),
                                  child: ItemHistoryExaminationWidget(
                                    key: Key(
                                      'Key3s1_${listExaminationItem.id}',
                                    ),
                                    examination: listExaminationItem,
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ).animateOnPageLoad(
                    animationsMap['columnOnPageLoadAnimation']!);
              },
            ),
          ),
        ),
      ),
    );
  }
}
