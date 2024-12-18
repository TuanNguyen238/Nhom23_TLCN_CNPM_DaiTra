import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'statistic_user_model.dart';
export 'statistic_user_model.dart';

class StatisticUserWidget extends StatefulWidget {
  const StatisticUserWidget({
    super.key,
    String? option,
  }) : this.option = option ?? '';

  final String option;

  @override
  State<StatisticUserWidget> createState() => _StatisticUserWidgetState();
}

class _StatisticUserWidgetState extends State<StatisticUserWidget> {
  late StatisticUserModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StatisticUserModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

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
    return Visibility(
      visible: widget!.option == '1',
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 20.0),
                  child: Text(
                    'Statistics on the number of users per month in year',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Open Sans',
                          color: FlutterFlowTheme.of(context).textHeading,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
                Container(
                  width: MediaQuery.sizeOf(context).width * 0.8,
                  height: 350.0,
                  child: Stack(
                    children: [
                      FlutterFlowBarChart(
                        barData: [
                          FFBarChartData(
                            yData: FFAppState().countMonthUser,
                            color: Color(0xFF0187C3),
                          ),
                          FFBarChartData(
                            yData: FFAppState().counMonthDoctor,
                            color: Color(0xFF7FB53E),
                          ),
                          FFBarChartData(
                            yData: FFAppState().countMonthAdmin,
                            color: Color(0xFFF6AB13),
                          )
                        ],
                        xLabels: FFAppConstants.month,
                        barWidth: 25.0,
                        barBorderRadius: BorderRadius.circular(4.0),
                        barSpace: 0.0,
                        groupSpace: 10.0,
                        alignment: BarChartAlignment.spaceAround,
                        chartStylingInfo: ChartStylingInfo(
                          backgroundColor: Colors.white,
                          borderColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          borderWidth: 0.5,
                        ),
                        axisBounds: AxisBounds(),
                        xAxisLabelInfo: AxisLabelInfo(
                          showLabels: true,
                          labelTextStyle: GoogleFonts.getFont(
                            'Open Sans',
                            color: FlutterFlowTheme.of(context).textHeading,
                            fontSize: 12.0,
                          ),
                          labelInterval: 10.0,
                          reservedSize: 28.0,
                        ),
                        yAxisLabelInfo: AxisLabelInfo(
                          showLabels: true,
                          labelInterval: 1.0,
                          labelFormatter: LabelFormatter(
                            numberFormat: (val) => val.toString(),
                          ),
                          reservedSize: 20.0,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, -1.0),
                        child: FlutterFlowChartLegendWidget(
                          entries: [
                            LegendEntry(Color(0xFF0187C3), 'User'),
                            LegendEntry(Color(0xFF7FB53E), 'Doctor'),
                            LegendEntry(Color(0xFFF6AB13), 'Admin'),
                          ],
                          width: 100.0,
                          height: 70.0,
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Open Sans',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          textPadding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          padding: EdgeInsets.all(5.0),
                          borderWidth: 0.1,
                          borderRadius: BorderRadius.circular(0.0),
                          borderColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          indicatorSize: 10.0,
                          indicatorBorderRadius: BorderRadius.circular(0.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: 280.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      border: Border.all(
                        color: Color(0xFFFFBC32),
                        width: 2.0,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Month',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Open Sans',
                                  color:
                                      FlutterFlowTheme.of(context).textHeading,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        FlutterFlowChoiceChips(
                          options: [
                            ChipData('Jan'),
                            ChipData('Feb'),
                            ChipData('Ma'),
                            ChipData('Apr'),
                            ChipData('May'),
                            ChipData('June'),
                            ChipData('July'),
                            ChipData('Aug'),
                            ChipData('Sept'),
                            ChipData('Oc'),
                            ChipData('Nov'),
                            ChipData('Dec')
                          ],
                          onChanged: (val) => safeSetState(
                              () => _model.choiceChipsValue = val?.firstOrNull),
                          selectedChipStyle: ChipStyle(
                            backgroundColor: Color(0xFFFFBC32),
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Open Sans',
                                  color: FlutterFlowTheme.of(context).info,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                            iconColor: Color(0x00000000),
                            iconSize: 16.0,
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          unselectedChipStyle: ChipStyle(
                            backgroundColor: Color(0xFFF0F0F0),
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Noto Sans',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                            iconColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            iconSize: 16.0,
                            elevation: 0.0,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          chipSpacing: 10.0,
                          rowSpacing: 15.0,
                          multiselect: false,
                          alignment: WrapAlignment.spaceBetween,
                          controller: _model.choiceChipsValueController ??=
                              FormFieldController<List<String>>(
                            [],
                          ),
                          wrapped: true,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: FlutterFlowTheme.of(context).secondaryText,
                          width: 1.0,
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(30.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 20.0),
                              child: Text(
                                'Statistics on the number of users by month',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .textHeading,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
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
                                      colors: chartPieChartColorsList2,
                                      radius: [150.0],
                                      borderWidth: [0.5],
                                      borderColor: [
                                        FlutterFlowTheme.of(context)
                                            .secondaryText
                                      ],
                                    ),
                                    donutHoleRadius: 0.0,
                                    donutHoleColor: Colors.transparent,
                                    sectionLabelType:
                                        PieChartSectionLabelType.value,
                                    sectionLabelStyle:
                                        FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .override(
                                              fontFamily: 'Noto Sans',
                                              letterSpacing: 0.0,
                                            ),
                                  ),
                                  Align(
                                    alignment: AlignmentDirectional(-1.0, 1.0),
                                    child: FlutterFlowChartLegendWidget(
                                      entries: FFAppConstants.listNamePieChart
                                          .asMap()
                                          .entries
                                          .map(
                                            (label) => LegendEntry(
                                              chartPieChartColorsList2[
                                                  label.key %
                                                      chartPieChartColorsList2
                                                          .length],
                                              label.value,
                                            ),
                                          )
                                          .toList(),
                                      width: 100.0,
                                      height: 70.0,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Open Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            letterSpacing: 0.0,
                                          ),
                                      textPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              5.0, 0.0, 0.0, 0.0),
                                      padding: EdgeInsets.all(5.0),
                                      borderWidth: 0.1,
                                      borderColor: FlutterFlowTheme.of(context)
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
                ].divide(SizedBox(width: 20.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
