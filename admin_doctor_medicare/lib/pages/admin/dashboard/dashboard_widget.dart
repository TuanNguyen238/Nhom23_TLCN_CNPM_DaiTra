import '/backend/api_requests/api_calls.dart';
import '/components/admin/nav_menu/nav_menu_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dashboard_model.dart';
export 'dashboard_model.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  State<DashboardWidget> createState() => _DashboardWidgetState();
}

class _DashboardWidgetState extends State<DashboardWidget>
    with TickerProviderStateMixin {
  late DashboardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().activePage = 'Dashboard';
      safeSetState(() {});

      safeSetState(() {});
      _model.getCountUserOutput = await CountUserAPICall.call(
        token: FFAppState().token,
      );

      if ((_model.getCountUserOutput?.statusCode ?? 200) == 200) {
        _model.getCountMedicineOutput = await CountMedicineAPICall.call(
          token: FFAppState().token,
        );

        if ((_model.getCountMedicineOutput?.statusCode ?? 200) == 200) {
          _model.getCountRoomOutput = await CountRoomAPICall.call(
            token: FFAppState().token,
          );

          if ((_model.getCountRoomOutput?.statusCode ?? 200) == 200) {
            _model.getCountMonthUserOutput = await CountUserMonthAPICall.call(
              token: FFAppState().token,
            );

            if ((_model.getCountMonthUserOutput?.statusCode ?? 200) == 200) {
              if ((_model.getCountMonthUserOutput?.statusCode ?? 200) == 200) {
                _model.getMedicineMonthOutput =
                    await GetMonthMedicineAPICall.call(
                  token: FFAppState().token,
                );

                if ((_model.getMedicineMonthOutput?.statusCode ?? 200) == 200) {
                  _model.getStatisticOutput =
                      await GetStatisticRecordAPICall.call(
                    token: FFAppState().token,
                    inputdate: _model.txtDate,
                  );

                  if ((_model.getStatisticOutput?.statusCode ?? 200) == 200) {
                    FFAppState().countRoom = getJsonField(
                      (_model.getCountRoomOutput?.jsonBody ?? ''),
                      r'''$.data''',
                    );
                    FFAppState().countMedicine = getJsonField(
                      (_model.getCountMedicineOutput?.jsonBody ?? ''),
                      r'''$.data''',
                    );
                    FFAppState().countMonthUser = getJsonField(
                      (_model.getCountMonthUserOutput?.jsonBody ?? ''),
                      r'''$.data.user''',
                      true,
                    )!
                        .toList()
                        .cast<int>();
                    FFAppState().counMonthDoctor = getJsonField(
                      (_model.getCountMonthUserOutput?.jsonBody ?? ''),
                      r'''$.data.doctor''',
                      true,
                    )!
                        .toList()
                        .cast<int>();
                    FFAppState().countMonthAdmin = getJsonField(
                      (_model.getCountMonthUserOutput?.jsonBody ?? ''),
                      r'''$.data.admin''',
                      true,
                    )!
                        .toList()
                        .cast<int>();
                    FFAppState().listCountUser = functions
                        .getCountUser(
                            getJsonField(
                              (_model.getCountUserOutput?.jsonBody ?? ''),
                              r'''$.data.USER''',
                            ),
                            getJsonField(
                              (_model.getCountUserOutput?.jsonBody ?? ''),
                              r'''$.data.DOCTOR''',
                            ),
                            getJsonField(
                              (_model.getCountUserOutput?.jsonBody ?? ''),
                              r'''$.data.ADMIN''',
                            ),
                            getJsonField(
                              (_model.getCountUserOutput?.jsonBody ?? ''),
                              r'''$.data.total''',
                            ))!
                        .toList()
                        .cast<int>();
                    FFAppState().countMedicineMonth = getJsonField(
                      (_model.getMedicineMonthOutput?.jsonBody ?? ''),
                      r'''$.data''',
                      true,
                    )!
                        .toList()
                        .cast<int>();
                    FFAppState().countRevenue = getJsonField(
                      (_model.getStatisticOutput?.jsonBody ?? ''),
                      r'''$.data.totalRevenue''',
                    );
                    FFAppState().countMonthRevenue = getJsonField(
                      (_model.getStatisticOutput?.jsonBody ?? ''),
                      r'''$.data.monthRevenue''',
                      true,
                    )!
                        .toList()
                        .cast<int>();
                    FFAppState().countDayRegisterdRevenue = getJsonField(
                      (_model.getStatisticOutput?.jsonBody ?? ''),
                      r'''$.data.dayRegisteredRevenue''',
                      true,
                    )!
                        .toList()
                        .cast<int>();
                    FFAppState().countDaySuccessfulRevenue = getJsonField(
                      (_model.getStatisticOutput?.jsonBody ?? ''),
                      r'''$.data.daySuccessfullRevenue''',
                      true,
                    )!
                        .toList()
                        .cast<int>();
                    safeSetState(() {});
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          getJsonField(
                            (_model.getStatisticOutput?.jsonBody ?? ''),
                            r'''$.message''',
                          ).toString().toString(),
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        duration: Duration(milliseconds: 4000),
                        backgroundColor: FlutterFlowTheme.of(context).secondary,
                      ),
                    );
                  }
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        getJsonField(
                          (_model.getMedicineMonthOutput?.jsonBody ?? ''),
                          r'''$.message''',
                        ).toString().toString(),
                        style: TextStyle(
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                      duration: Duration(milliseconds: 4000),
                      backgroundColor: FlutterFlowTheme.of(context).secondary,
                    ),
                  );
                }
              } else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      getJsonField(
                        (_model.getCountMonthUserOutput?.jsonBody ?? ''),
                        r'''$''',
                      ).toString().toString(),
                      style: TextStyle(
                        color: FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                    duration: Duration(milliseconds: 4000),
                    backgroundColor: FlutterFlowTheme.of(context).secondary,
                  ),
                );
              }
            } else {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    getJsonField(
                      (_model.getCountMonthUserOutput?.jsonBody ?? ''),
                      r'''$.message''',
                    ).toString().toString(),
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
                  ),
                  duration: Duration(milliseconds: 4000),
                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                ),
              );
            }
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  getJsonField(
                    (_model.getCountRoomOutput?.jsonBody ?? ''),
                    r'''$.message''',
                  ).toString().toString(),
                  style: TextStyle(
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                ),
                duration: Duration(milliseconds: 4000),
                backgroundColor: FlutterFlowTheme.of(context).secondary,
              ),
            );
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                getJsonField(
                  (_model.getCountMedicineOutput?.jsonBody ?? ''),
                  r'''$.message''',
                ).toString().toString(),
                style: TextStyle(
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
              ),
              duration: Duration(milliseconds: 4000),
              backgroundColor: FlutterFlowTheme.of(context).secondary,
            ),
          );
        }
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              getJsonField(
                (_model.getCountUserOutput?.jsonBody ?? ''),
                r'''$.message''',
              ).toString().toString(),
              style: TextStyle(
                color: FlutterFlowTheme.of(context).primaryText,
              ),
            ),
            duration: Duration(milliseconds: 4000),
            backgroundColor: FlutterFlowTheme.of(context).secondary,
          ),
        );
      }
    });

    animationsMap.addAll({
      'containerOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 180.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 180.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 180.0.ms,
            duration: 600.0.ms,
            begin: Offset(20.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(40.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 180.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 180.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 180.0.ms,
            duration: 600.0.ms,
            begin: Offset(20.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(40.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation5': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 180.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 180.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 180.0.ms,
            duration: 600.0.ms,
            begin: Offset(20.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation6': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(40.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'containerOnPageLoadAnimation4': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: Offset(100.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation7': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 180.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 180.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 180.0.ms,
            duration: 600.0.ms,
            begin: Offset(20.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
      'textOnPageLoadAnimation8': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 200.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: Offset(40.0, 0.0),
            end: Offset(0.0, 0.0),
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();
    final chartPieChartColorsList2 = [
      Color(0xFF446ABC),
      Color(0xFFFFBF00),
      Color(0xFFDB7228)
    ];
    final chartPieChartColorsList5 = [
      Color(0xFF59C3C3),
      Color(0xFF247BA1),
      Color(0xFFB6AF8D),
      Color(0xFFFDBF4A),
      Color(0xFFF88001),
      Color(0xFF3E8DD0),
      Color(0xFFDC67AB),
      Color(0xFF6772DC),
      Color(0xFF45F78F),
      Color(0xFF9E7BBB)
    ];
    final chartPieChartColorsList6 = [
      Color(0xFF59C3C3),
      Color(0xFF247BA1),
      Color(0xFFB6AF8D),
      Color(0xFFFDBF4A),
      Color(0xFFF88001),
      Color(0xFF3E8DD0),
      Color(0xFFDC67AB),
      Color(0xFF6772DC),
      Color(0xFF45F78F),
      Color(0xFF9E7BBB)
    ];
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.navMenuModel,
                updateCallback: () => safeSetState(() {}),
                child: NavMenuWidget(),
              ),
              Expanded(
                child: Container(
                  width: 100.0,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryText,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Stack(
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 30.0, 0.0, 0.0),
                                  child: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.4,
                                    height: MediaQuery.sizeOf(context).height *
                                        0.15,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF204A9C),
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1.13, 0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/hehee.png',
                                      width: MediaQuery.sizeOf(context).width *
                                          0.2,
                                      height:
                                          MediaQuery.sizeOf(context).height *
                                              0.183,
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      150.0, 70.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Hi ${FFAppState().user.username}',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Open Sans',
                                              fontSize: 14.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Text(
                                        'Welcome to your dashboard',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Open Sans',
                                              fontSize: 16.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 10.0, 20.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 15.0, 0.0, 12.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.option = '1';
                                      safeSetState(() {});
                                    },
                                    child: Container(
                                      width: 180.0,
                                      height: 180.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE8F7FF),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x1F000000),
                                            offset: Offset(
                                              0.0,
                                              2.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Image.asset(
                                                'assets/images/userdashboard.png',
                                                width: 80.0,
                                                height: 80.0,
                                                fit: BoxFit.scaleDown,
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Total User',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          color:
                                                              Color(0xFF46BDFF),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'textOnPageLoadAnimation1']!),
                                                ),
                                                Text(
                                                  FFAppState()
                                                      .listCountUser
                                                      .lastOrNull!
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            Color(0xFF46BDFF),
                                                        letterSpacing: 0.0,
                                                      ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textOnPageLoadAnimation2']!),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'containerOnPageLoadAnimation1']!),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 15.0, 0.0, 12.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.option = '2';
                                      safeSetState(() {});
                                    },
                                    child: Container(
                                      width: 180.0,
                                      height: 180.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFFEF5E5),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x1F000000),
                                            offset: Offset(
                                              0.0,
                                              2.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Image.asset(
                                                'assets/images/medicine.png',
                                                width: 80.0,
                                                height: 80.0,
                                                fit: BoxFit.scaleDown,
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Total Medicine',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          color:
                                                              Color(0xFFFFAE1F),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'textOnPageLoadAnimation3']!),
                                                ),
                                                Text(
                                                  FFAppState()
                                                      .countMedicine
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            Color(0xFFFFAE1F),
                                                        letterSpacing: 0.0,
                                                      ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textOnPageLoadAnimation4']!),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'containerOnPageLoadAnimation2']!),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 15.0, 0.0, 12.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.option = '3';
                                      safeSetState(() {});
                                    },
                                    child: Container(
                                      width: 180.0,
                                      height: 180.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFE6F7F5),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x1F000000),
                                            offset: Offset(
                                              0.0,
                                              2.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Image.asset(
                                                'assets/images/hospital.png',
                                                width: 80.0,
                                                height: 80.0,
                                                fit: BoxFit.scaleDown,
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Total Room',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          color:
                                                              Color(0xFF26A69A),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'textOnPageLoadAnimation5']!),
                                                ),
                                                Text(
                                                  FFAppState()
                                                      .countRoom
                                                      .toString(),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            Color(0xFF26A69A),
                                                        letterSpacing: 0.0,
                                                      ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textOnPageLoadAnimation6']!),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'containerOnPageLoadAnimation3']!),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 15.0, 0.0, 12.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      _model.option = '3';
                                      safeSetState(() {});
                                    },
                                    child: Container(
                                      width: 180.0,
                                      height: 180.0,
                                      decoration: BoxDecoration(
                                        color: Color(0xFFF7E7E6),
                                        boxShadow: [
                                          BoxShadow(
                                            blurRadius: 4.0,
                                            color: Color(0x1F000000),
                                            offset: Offset(
                                              0.0,
                                              2.0,
                                            ),
                                          )
                                        ],
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12.0, 0.0, 12.0, 0.0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 10.0, 0.0, 0.0),
                                              child: Image.asset(
                                                'assets/images/salary.png',
                                                width: 80.0,
                                                height: 80.0,
                                                fit: BoxFit.scaleDown,
                                              ),
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 10.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Total Revenue',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodySmall
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          color:
                                                              Color(0xFFB73E27),
                                                          fontSize: 16.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                        ),
                                                  ).animateOnPageLoad(animationsMap[
                                                      'textOnPageLoadAnimation7']!),
                                                ),
                                                Text(
                                                  formatNumber(
                                                    FFAppState().countRevenue,
                                                    formatType:
                                                        FormatType.compact,
                                                  ),
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            Color(0xFFB73E27),
                                                        letterSpacing: 0.0,
                                                      ),
                                                ).animateOnPageLoad(animationsMap[
                                                    'textOnPageLoadAnimation8']!),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ).animateOnPageLoad(animationsMap[
                                      'containerOnPageLoadAnimation4']!),
                                ),
                              ),
                            ].divide(SizedBox(width: 40.0)),
                          ),
                        ),
                        if (_model.option == '1')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 50.0, 0.0, 10.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 20.0),
                                      child: Text(
                                        'Statistics on the number of users per month in year',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Open Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .textHeading,
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.8,
                                      height: 350.0,
                                      child: Stack(
                                        children: [
                                          FlutterFlowBarChart(
                                            barData: [
                                              FFBarChartData(
                                                yData:
                                                    FFAppState().countMonthUser,
                                                color: Color(0xFF0187C3),
                                              ),
                                              FFBarChartData(
                                                yData: FFAppState()
                                                    .counMonthDoctor,
                                                color: Color(0xFF7FB53E),
                                              ),
                                              FFBarChartData(
                                                yData: FFAppState()
                                                    .countMonthAdmin,
                                                color: Color(0xFFF6AB13),
                                              )
                                            ],
                                            xLabels: FFAppConstants.month,
                                            barWidth: 25.0,
                                            barBorderRadius:
                                                BorderRadius.circular(4.0),
                                            barSpace: 0.0,
                                            groupSpace: 10.0,
                                            alignment:
                                                BarChartAlignment.spaceAround,
                                            chartStylingInfo: ChartStylingInfo(
                                              backgroundColor: Colors.white,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              borderWidth: 0.5,
                                            ),
                                            axisBounds: AxisBounds(),
                                            xAxisLabelInfo: AxisLabelInfo(
                                              showLabels: true,
                                              labelTextStyle:
                                                  GoogleFonts.getFont(
                                                'Open Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textHeading,
                                                fontSize: 12.0,
                                              ),
                                              labelInterval: 10.0,
                                              reservedSize: 28.0,
                                            ),
                                            yAxisLabelInfo: AxisLabelInfo(
                                              showLabels: true,
                                              labelInterval: 1.0,
                                              labelFormatter: LabelFormatter(
                                                numberFormat: (val) =>
                                                    val.toString(),
                                              ),
                                              reservedSize: 20.0,
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: FlutterFlowChartLegendWidget(
                                              entries: [
                                                LegendEntry(
                                                    Color(0xFF0187C3), 'User'),
                                                LegendEntry(Color(0xFF7FB53E),
                                                    'Doctor'),
                                                LegendEntry(
                                                    Color(0xFFF6AB13), 'Admin'),
                                              ],
                                              width: 100.0,
                                              height: 70.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                              textPadding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              padding: EdgeInsets.all(5.0),
                                              borderWidth: 0.1,
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              indicatorSize: 10.0,
                                              indicatorBorderRadius:
                                                  BorderRadius.circular(0.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 0.0, 10.0, 0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              width: 1.0,
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(30.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 20.0),
                                                  child: Text(
                                                    'Statistics on the role of users',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .textHeading,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                ),
                                                Container(
                                                  width: 350.0,
                                                  height: 430.0,
                                                  child: Stack(
                                                    children: [
                                                      FlutterFlowPieChart(
                                                        data: FFPieChartData(
                                                          values: FFAppState()
                                                              .listCountUser
                                                              .take(3)
                                                              .toList(),
                                                          colors:
                                                              chartPieChartColorsList2,
                                                          radius: [150.0],
                                                          borderWidth: [0.5],
                                                          borderColor: [
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText
                                                          ],
                                                        ),
                                                        donutHoleRadius: 0.0,
                                                        donutHoleColor:
                                                            Colors.transparent,
                                                        sectionLabelType:
                                                            PieChartSectionLabelType
                                                                .value,
                                                        sectionLabelStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Noto Sans',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            AlignmentDirectional(
                                                                -1.0, 1.0),
                                                        child:
                                                            FlutterFlowChartLegendWidget(
                                                          entries: FFAppConstants
                                                              .listNamePieChart
                                                              .asMap()
                                                              .entries
                                                              .map(
                                                                (label) =>
                                                                    LegendEntry(
                                                                  chartPieChartColorsList2[label
                                                                          .key %
                                                                      chartPieChartColorsList2
                                                                          .length],
                                                                  label.value,
                                                                ),
                                                              )
                                                              .toList(),
                                                          width: 100.0,
                                                          height: 70.0,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Open Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryText,
                                                                    letterSpacing:
                                                                        0.0,
                                                                  ),
                                                          textPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      5.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          padding:
                                                              EdgeInsets.all(
                                                                  5.0),
                                                          borderWidth: 0.1,
                                                          borderColor:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .secondaryText,
                                                          indicatorSize: 10.0,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ].divide(SizedBox(width: 10.0)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        if (_model.option == '2')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 50.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 20.0),
                                      child: Text(
                                        'Medicine statistics by month of the year',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Open Sans',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .textHeading,
                                              fontSize: 18.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                      ),
                                    ),
                                    Container(
                                      width: MediaQuery.sizeOf(context).width *
                                          0.8,
                                      height: 350.0,
                                      child: Stack(
                                        children: [
                                          FlutterFlowBarChart(
                                            barData: [
                                              FFBarChartData(
                                                yData: FFAppState()
                                                    .countMedicineMonth,
                                                color: Color(0xFF0187C3),
                                              )
                                            ],
                                            xLabels: FFAppConstants.month,
                                            barWidth: 25.0,
                                            barBorderRadius:
                                                BorderRadius.circular(4.0),
                                            groupSpace: 10.0,
                                            alignment:
                                                BarChartAlignment.spaceAround,
                                            chartStylingInfo: ChartStylingInfo(
                                              backgroundColor: Colors.white,
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              borderWidth: 0.5,
                                            ),
                                            axisBounds: AxisBounds(),
                                            xAxisLabelInfo: AxisLabelInfo(
                                              showLabels: true,
                                              labelTextStyle:
                                                  GoogleFonts.getFont(
                                                'Open Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textHeading,
                                                fontSize: 12.0,
                                              ),
                                              labelInterval: 10.0,
                                              reservedSize: 28.0,
                                            ),
                                            yAxisLabelInfo: AxisLabelInfo(
                                              showLabels: true,
                                              labelInterval: 1.0,
                                              labelFormatter: LabelFormatter(
                                                numberFormat: (val) =>
                                                    val.toString(),
                                              ),
                                              reservedSize: 20.0,
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                AlignmentDirectional(0.0, -1.0),
                                            child: FlutterFlowChartLegendWidget(
                                              entries: [
                                                LegendEntry(Color(0xFF0187C3),
                                                    'Medicine'),
                                              ],
                                              width: 100.0,
                                              height: 40.0,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Open Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        letterSpacing: 0.0,
                                                      ),
                                              textPadding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              padding: EdgeInsets.all(5.0),
                                              borderWidth: 0.1,
                                              borderRadius:
                                                  BorderRadius.circular(0.0),
                                              borderColor:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              indicatorSize: 10.0,
                                              indicatorBorderRadius:
                                                  BorderRadius.circular(0.0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        if (_model.option == '3')
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 50.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20.0, 0.0, 20.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 20.0),
                                        child: Text(
                                          'Statistics on booking revenue',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Open Sans',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .textHeading,
                                                fontSize: 18.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.sizeOf(context).width *
                                                0.8,
                                        height: 350.0,
                                        child: Stack(
                                          children: [
                                            FlutterFlowBarChart(
                                              barData: [
                                                FFBarChartData(
                                                  yData: FFAppState()
                                                      .countMonthRevenue,
                                                  color: Color(0xFF0187C3),
                                                )
                                              ],
                                              xLabels: FFAppConstants.month,
                                              barWidth: 25.0,
                                              barBorderRadius:
                                                  BorderRadius.circular(4.0),
                                              groupSpace: 10.0,
                                              alignment:
                                                  BarChartAlignment.spaceAround,
                                              chartStylingInfo:
                                                  ChartStylingInfo(
                                                backgroundColor: Colors.white,
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                borderWidth: 0.5,
                                              ),
                                              axisBounds: AxisBounds(),
                                              xAxisLabelInfo: AxisLabelInfo(
                                                showLabels: true,
                                                labelTextStyle:
                                                    GoogleFonts.getFont(
                                                  'Open Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .textHeading,
                                                  fontSize: 12.0,
                                                ),
                                                labelInterval: 10.0,
                                                reservedSize: 28.0,
                                              ),
                                              yAxisLabelInfo: AxisLabelInfo(
                                                showLabels: true,
                                                labelInterval: 1.0,
                                                labelFormatter: LabelFormatter(
                                                  numberFormat: (val) =>
                                                      val.toString(),
                                                ),
                                                reservedSize: 20.0,
                                              ),
                                            ),
                                            Align(
                                              alignment: AlignmentDirectional(
                                                  0.0, -1.0),
                                              child:
                                                  FlutterFlowChartLegendWidget(
                                                entries: [
                                                  LegendEntry(Color(0xFF0187C3),
                                                      'Revenue'),
                                                ],
                                                width: 100.0,
                                                height: 40.0,
                                                textStyle: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Open Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondaryText,
                                                      letterSpacing: 0.0,
                                                    ),
                                                textPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            5.0, 0.0, 0.0, 0.0),
                                                padding: EdgeInsets.all(5.0),
                                                borderWidth: 0.1,
                                                borderRadius:
                                                    BorderRadius.circular(0.0),
                                                borderColor:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                indicatorSize: 10.0,
                                                indicatorBorderRadius:
                                                    BorderRadius.circular(0.0),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      45.0, 30.0, 8.0, 0.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      final _datePickedDate =
                                          await showDatePicker(
                                        context: context,
                                        initialDate: getCurrentTimestamp,
                                        firstDate: DateTime(1900),
                                        lastDate: DateTime(2050),
                                      );

                                      if (_datePickedDate != null) {
                                        safeSetState(() {
                                          _model.datePicked = DateTime(
                                            _datePickedDate.year,
                                            _datePickedDate.month,
                                            _datePickedDate.day,
                                          );
                                        });
                                      }
                                      _model.txtDate = dateTimeFormat(
                                        "d/M/y",
                                        _model.datePicked,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      );
                                      safeSetState(() {});
                                      _model.getStatisticDateOutput =
                                          await GetStatisticRecordAPICall.call(
                                        token: FFAppState().token,
                                        inputdate: _model.txtDate,
                                      );

                                      if ((_model.getStatisticDateOutput
                                                  ?.statusCode ??
                                              200) ==
                                          200) {
                                        FFAppState().countMonthRevenue =
                                            getJsonField(
                                          (_model.getStatisticDateOutput
                                                  ?.jsonBody ??
                                              ''),
                                          r'''$.data.monthRevenue''',
                                          true,
                                        )!
                                                .toList()
                                                .cast<int>();
                                        FFAppState().countDayRegisterdRevenue =
                                            getJsonField(
                                          (_model.getStatisticDateOutput
                                                  ?.jsonBody ??
                                              ''),
                                          r'''$.data.dayRegisteredRevenue''',
                                          true,
                                        )!
                                                .toList()
                                                .cast<int>();
                                        FFAppState().countDaySuccessfulRevenue =
                                            getJsonField(
                                          (_model.getStatisticDateOutput
                                                  ?.jsonBody ??
                                              ''),
                                          r'''$.data.daySuccessfullRevenue''',
                                          true,
                                        )!
                                                .toList()
                                                .cast<int>();
                                        FFAppState().countRevenue =
                                            getJsonField(
                                          (_model.getStatisticDateOutput
                                                  ?.jsonBody ??
                                              ''),
                                          r'''$.data.totalRevenue''',
                                        );
                                        safeSetState(() {});
                                      } else {
                                        ScaffoldMessenger.of(context)
                                            .showSnackBar(
                                          SnackBar(
                                            content: Text(
                                              getJsonField(
                                                (_model.getStatisticDateOutput
                                                        ?.jsonBody ??
                                                    ''),
                                                r'''$.message''',
                                              ).toString(),
                                              style: TextStyle(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                            duration:
                                                Duration(milliseconds: 4000),
                                            backgroundColor:
                                                FlutterFlowTheme.of(context)
                                                    .secondary,
                                          ),
                                        );
                                      }

                                      safeSetState(() {});
                                    },
                                    child: Container(
                                      key: ValueKey('ContainerDate_wleu'),
                                      width: 180.0,
                                      height: 50.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          width: 0.5,
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          FlutterFlowIconButton(
                                            borderColor: Colors.transparent,
                                            borderRadius: 20.0,
                                            borderWidth: 1.0,
                                            buttonSize: 40.0,
                                            fillColor: Colors.transparent,
                                            icon: Icon(
                                              Icons.calendar_month_sharp,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                            onPressed: () {
                                              print('IconButton pressed ...');
                                            },
                                          ),
                                          Text(
                                            valueOrDefault<String>(
                                              _model.txtDate,
                                              'Chọn ngày',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Noto Sans',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(20.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 20.0),
                                            child: Text(
                                              'Statistics on the number of registered rooms',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Open Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .textHeading,
                                                    fontSize: 18.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                          Container(
                                            width: 500.0,
                                            height: 350.0,
                                            child: Stack(
                                              children: [
                                                FlutterFlowPieChart(
                                                  key: ValueKey('Chart_w0at'),
                                                  data: FFPieChartData(
                                                    values: FFAppState()
                                                        .countDayRegisterdRevenue,
                                                    colors:
                                                        chartPieChartColorsList5,
                                                    radius: [130.0],
                                                    borderColor: [
                                                      Color(0x00000000)
                                                    ],
                                                  ),
                                                  donutHoleRadius: 0.0,
                                                  donutHoleColor:
                                                      Colors.transparent,
                                                  sectionLabelType:
                                                      PieChartSectionLabelType
                                                          .value,
                                                  sectionLabelStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .headlineSmall
                                                          .override(
                                                            fontFamily:
                                                                'Noto Sans',
                                                            fontSize: 14.0,
                                                            letterSpacing: 0.0,
                                                          ),
                                                ),
                                                Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          -1.0, 1.0),
                                                  child:
                                                      FlutterFlowChartLegendWidget(
                                                    entries: FFAppConstants
                                                        .lstNameRevenueChart
                                                        .asMap()
                                                        .entries
                                                        .map(
                                                          (label) =>
                                                              LegendEntry(
                                                            chartPieChartColorsList5[
                                                                label.key %
                                                                    chartPieChartColorsList5
                                                                        .length],
                                                            label.value,
                                                          ),
                                                        )
                                                        .toList(),
                                                    width: 100.0,
                                                    height: 210.0,
                                                    textStyle: FlutterFlowTheme
                                                            .of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Open Sans',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    textPadding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(5.0, 0.0,
                                                                0.0, 0.0),
                                                    padding:
                                                        EdgeInsets.all(5.0),
                                                    borderWidth: 0.1,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                    borderColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .secondaryText,
                                                    indicatorSize: 10.0,
                                                    indicatorBorderRadius:
                                                        BorderRadius.circular(
                                                            0.0),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 20.0),
                                            child: Text(
                                              'Statistics on the number of rooms successfully examined',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Open Sans',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .textHeading,
                                                    fontSize: 18.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                  ),
                                            ),
                                          ),
                                          Container(
                                            width: 500.0,
                                            height: 350.0,
                                            child: FlutterFlowPieChart(
                                              data: FFPieChartData(
                                                values: FFAppState()
                                                    .countDaySuccessfulRevenue,
                                                colors:
                                                    chartPieChartColorsList6,
                                                radius: [130.0],
                                                borderColor: [
                                                  Color(0x00000000)
                                                ],
                                              ),
                                              donutHoleRadius: 0.0,
                                              donutHoleColor:
                                                  Colors.transparent,
                                              sectionLabelType:
                                                  PieChartSectionLabelType
                                                      .value,
                                              sectionLabelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .headlineSmall
                                                      .override(
                                                        fontFamily: 'Noto Sans',
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
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
