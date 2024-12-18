import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dialog_add_room_model.dart';
export 'dialog_add_room_model.dart';

class DialogAddRoomWidget extends StatefulWidget {
  const DialogAddRoomWidget({super.key});

  @override
  State<DialogAddRoomWidget> createState() => _DialogAddRoomWidgetState();
}

class _DialogAddRoomWidgetState extends State<DialogAddRoomWidget> {
  late DialogAddRoomModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DialogAddRoomModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.getOutput = await GetAllDoctorCall.call(
        token: FFAppState().token,
      );

      if ((_model.getOutput?.statusCode ?? 200) == 200) {
        _model.doctors = (getJsonField(
          (_model.getOutput?.jsonBody ?? ''),
          r'''$.data''',
          true,
        )!
                .toList()
                .map<DoctorStruct?>(DoctorStruct.maybeFromMap)
                .toList() as Iterable<DoctorStruct?>)
            .withoutNulls
            .where((e) => e.type == _model.typeDropdownValue)
            .toList()
            .toList()
            .cast<DoctorStruct>();
        safeSetState(() {});
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              getJsonField(
                (_model.getOutput?.jsonBody ?? ''),
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

    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
        child: Container(
          width: 640.0,
          height: 700.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).primaryText,
            boxShadow: [
              BoxShadow(
                blurRadius: 3.0,
                color: Color(0x33000000),
                offset: Offset(
                  0.0,
                  1.0,
                ),
              )
            ],
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'Add Medicial Clinic',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Open Sans',
                                color: Color(0xFF475567),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                        child: Text(
                          'Fill in all the information to create a new medical clinic.',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Noto Sans',
                                    fontSize: 15.0,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Select number of people',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ),
                          Container(
                            width: 120.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              borderRadius: BorderRadius.circular(8.0),
                              shape: BoxShape.rectangle,
                            ),
                            child: FlutterFlowCountController(
                              decrementIconBuilder: (enabled) => Icon(
                                Icons.remove_rounded,
                                color: enabled
                                    ? FlutterFlowTheme.of(context).secondaryText
                                    : FlutterFlowTheme.of(context).alternate,
                                size: 24.0,
                              ),
                              incrementIconBuilder: (enabled) => Icon(
                                Icons.add_rounded,
                                color: enabled
                                    ? Color(0xFF204A9C)
                                    : FlutterFlowTheme.of(context).alternate,
                                size: 24.0,
                              ),
                              countBuilder: (count) => Text(
                                count.toString(),
                                style: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .override(
                                      fontFamily: 'Noto Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontSize: 18.0,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                              count: _model.countControllerValue ??= 0,
                              updateCount: (count) => safeSetState(
                                  () => _model.countControllerValue = count),
                              stepSize: 1,
                              contentPadding: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                            ),
                          ),
                        ].divide(SizedBox(width: 20.0)),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Select room',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Open Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                      fontSize: 16.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: AlignmentDirectional(-1.0, 0.0),
                            child: FlutterFlowDropDown<String>(
                              controller: _model.dropDownValueController ??=
                                  FormFieldController<String>(
                                _model.dropDownValue ??= '1',
                              ),
                              options: [
                                '1',
                                '2',
                                '3',
                                '4',
                                '5',
                                '6',
                                '7',
                                '8',
                                '9',
                                '10'
                              ],
                              onChanged: (val) => safeSetState(
                                  () => _model.dropDownValue = val),
                              width: 330.0,
                              height: 40.0,
                              searchHintTextStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                              searchTextStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Noto Sans',
                                    letterSpacing: 0.0,
                                  ),
                              textStyle: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                              hintText: 'Please select room',
                              searchHintText: 'Search...',
                              icon: Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                size: 24.0,
                              ),
                              fillColor:
                                  FlutterFlowTheme.of(context).primaryText,
                              elevation: 2.0,
                              borderColor: Colors.transparent,
                              borderWidth: 0.0,
                              borderRadius: 8.0,
                              margin: EdgeInsetsDirectional.fromSTEB(
                                  12.0, 0.0, 12.0, 0.0),
                              hidesUnderline: true,
                              isOverButton: false,
                              isSearchable: true,
                              isMultiSelect: false,
                            ),
                          ),
                        ].divide(SizedBox(width: 5.0)),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Select date',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Open Sans',
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ),
                      FlutterFlowChoiceChips(
                        options: functions
                            .getCalendar(functions.getCurrentDate())
                            .map((label) => ChipData(label))
                            .toList(),
                        onChanged: (val) => safeSetState(
                            () => _model.choiceDateValue = val?.firstOrNull),
                        selectedChipStyle: ChipStyle(
                          backgroundColor: Color(0xFF204A9C),
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Noto Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                  ),
                          iconColor: Colors.white,
                          iconSize: 18.0,
                          labelPadding: EdgeInsetsDirectional.fromSTEB(
                              12.0, 4.0, 12.0, 4.0),
                          elevation: 2.0,
                          borderWidth: 5.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: Color(0xFFF4F6FC),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Noto Sans',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          labelPadding: EdgeInsetsDirectional.fromSTEB(
                              10.0, 4.0, 10.0, 4.0),
                          elevation: 4.0,
                          borderWidth: 5.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        chipSpacing: 10.0,
                        rowSpacing: 10.0,
                        multiselect: false,
                        initialized: _model.choiceDateValue != null,
                        alignment: WrapAlignment.center,
                        controller: _model.choiceDateValueController ??=
                            FormFieldController<List<String>>(
                          ['0'],
                        ),
                        wrapped: true,
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              5.0, 0.0, 0.0, 0.0),
                          child: Text(
                            'Select time',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Open Sans',
                                  color: FlutterFlowTheme.of(context).lineColor,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ),
                      ),
                      FlutterFlowChoiceChips(
                        options: [
                          ChipData('07:00'),
                          ChipData('07:30'),
                          ChipData('08:00'),
                          ChipData('08:30'),
                          ChipData('09:00'),
                          ChipData('09:30'),
                          ChipData('10:00'),
                          ChipData('10:30'),
                          ChipData('11:00'),
                          ChipData('11:30'),
                          ChipData('13:00'),
                          ChipData('13:30'),
                          ChipData('14:00'),
                          ChipData('14:30'),
                          ChipData('15:00')
                        ],
                        onChanged: (val) => safeSetState(
                            () => _model.choiceTimeValue = val?.firstOrNull),
                        selectedChipStyle: ChipStyle(
                          backgroundColor: Color(0xFF204A9C),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Open Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                          iconColor: Color(0x00000000),
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderWidth: 0.5,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor:
                              FlutterFlowTheme.of(context).primaryText,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Open Sans',
                                    color: Color(0xFF204A9C),
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                          iconColor: Color(0xFF606A85),
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderColor: Color(0xFF204A9C),
                          borderWidth: 1.0,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        chipSpacing: 10.0,
                        rowSpacing: 10.0,
                        multiselect: false,
                        alignment: WrapAlignment.spaceEvenly,
                        controller: _model.choiceTimeValueController ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                      FlutterFlowDropDown<String>(
                        controller: _model.typeDropdownValueController ??=
                            FormFieldController<String>(
                          _model.typeDropdownValue ??= 'BASIC_INFO',
                        ),
                        options: List<String>.from(
                            ['BASIC_INFO', 'HEART_ULTRASOUND', 'PRESCRIPTION']),
                        optionLabels: [
                          'BASIC INFO',
                          'HEART ULTRASOUND',
                          'PRESCRIPTION'
                        ],
                        onChanged: (val) async {
                          safeSetState(() => _model.typeDropdownValue = val);
                          _model.doctors = (getJsonField(
                            (_model.getOutput?.jsonBody ?? ''),
                            r'''$.data''',
                            true,
                          )!
                                  .toList()
                                  .map<DoctorStruct?>(DoctorStruct.maybeFromMap)
                                  .toList() as Iterable<DoctorStruct?>)
                              .withoutNulls
                              .where((e) => e.type == _model.typeDropdownValue)
                              .toList()
                              .cast<DoctorStruct>();
                          safeSetState(() {});
                        },
                        height: 60.0,
                        searchHintTextStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Open Sans',
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  lineHeight: 2.0,
                                ),
                        searchTextStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Noto Sans',
                                  letterSpacing: 0.0,
                                ),
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily: 'Open Sans',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                            ),
                        hintText: 'Select type...',
                        searchHintText: 'Select medicine Name...',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        borderColor: Color(0xFFEEEEEE),
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        hidesUnderline: true,
                        isOverButton: false,
                        isSearchable: true,
                        isMultiSelect: false,
                      ),
                      FlutterFlowDropDown<String>(
                        controller: _model.listDoctorDropdownValueController ??=
                            FormFieldController<String>(
                          _model.listDoctorDropdownValue ??= '',
                        ),
                        options: List<String>.from(
                            _model.doctors.map((e) => e.id).toList()),
                        optionLabels:
                            _model.doctors.map((e) => e.user.username).toList(),
                        onChanged: (val) => safeSetState(
                            () => _model.listDoctorDropdownValue = val),
                        height: 60.0,
                        searchHintTextStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Open Sans',
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  lineHeight: 2.0,
                                ),
                        searchTextStyle:
                            FlutterFlowTheme.of(context).bodyMedium.override(
                                  fontFamily: 'Noto Sans',
                                  letterSpacing: 0.0,
                                ),
                        textStyle: FlutterFlowTheme.of(context)
                            .bodyMedium
                            .override(
                              fontFamily: 'Open Sans',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                            ),
                        hintText: 'Select doctor...',
                        searchHintText: 'Select medicine Name...',
                        icon: Icon(
                          Icons.keyboard_arrow_down_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 24.0,
                        ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        elevation: 2.0,
                        borderColor: Color(0xFFEEEEEE),
                        borderWidth: 2.0,
                        borderRadius: 8.0,
                        margin: EdgeInsetsDirectional.fromSTEB(
                            12.0, 0.0, 12.0, 0.0),
                        hidesUnderline: true,
                        isOverButton: false,
                        isSearchable: true,
                        isMultiSelect: false,
                      ),
                    ].divide(SizedBox(height: 15.0)),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 12.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            Navigator.pop(context);
                          },
                          text: 'Cancel',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                20.0, 0.0, 20.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: Color(0xFFEAF3FC),
                            textStyle:
                                FlutterFlowTheme.of(context).bodyLarge.override(
                                      fontFamily: 'Open Sans',
                                      color: Color(0xFF204A9C),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 0.0,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          _model.createOutput =
                              await CreateExamRoomAPICall.call(
                            examDate: functions.getDateTimeExamRoom(
                                functions.getCurrentDate(),
                                _model.choiceDateValue!),
                            examTime: '${_model.choiceTimeValue}:00',
                            roomNumber: 1,
                            maxPatients: _model.countControllerValue,
                            token: FFAppState().token,
                            doctorId: _model.listDoctorDropdownValue,
                          );

                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                getJsonField(
                                  (_model.createOutput?.jsonBody ?? ''),
                                  r'''$.message''',
                                ).toString(),
                                style: TextStyle(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).secondary,
                            ),
                          );
                          if ((_model.createOutput?.statusCode ?? 200) == 201) {
                            Navigator.pop(context);
                          }

                          safeSetState(() {});
                        },
                        text: 'Save',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 0.0, 20.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFF204A9C),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Open Sans',
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
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
    );
  }
}
