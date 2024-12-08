import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'column_appointment_date_model.dart';
export 'column_appointment_date_model.dart';

class ColumnAppointmentDateWidget extends StatefulWidget {
  const ColumnAppointmentDateWidget({
    super.key,
    required this.lstDate,
  });

  final List<String>? lstDate;

  @override
  State<ColumnAppointmentDateWidget> createState() =>
      _ColumnAppointmentDateWidgetState();
}

class _ColumnAppointmentDateWidgetState
    extends State<ColumnAppointmentDateWidget> {
  late ColumnAppointmentDateModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ColumnAppointmentDateModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 0.0,
      runSpacing: 0.0,
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      direction: Axis.horizontal,
      runAlignment: WrapAlignment.start,
      verticalDirection: VerticalDirection.down,
      clipBehavior: Clip.none,
      children: [
        FlutterFlowChoiceChips(
          options: widget.lstDate!.map((label) => ChipData(label)).toList(),
          onChanged: (val) async {
            safeSetState(() => _model.choiceChipsValue =
                val?.firstOrNull); // callGetAvailableTimeAPI
            _model.getOutput = await GetAvailableTImeAPICall.call(
              examDate: functions.getDateTimeExamRoom(
                  functions.getCurrentDate(), _model.choiceChipsValue!),
            );

            if ((_model.getOutput?.statusCode ?? 200) == 200) {
              FFAppState().lstTime = (getJsonField(
                (_model.getOutput?.jsonBody ?? ''),
                r'''$.data''',
                true,
              )!
                      .toList()
                      .map<AvailableTimeStruct?>(
                          AvailableTimeStruct.maybeFromMap)
                      .toList() as Iterable<AvailableTimeStruct?>)
                  .withoutNulls
                  .toList()
                  .cast<AvailableTimeStruct>();
              FFAppState().update(() {});
            } else {
              // showMessage
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    getJsonField(
                      (_model.getOutput?.jsonBody ?? ''),
                      r'''$.message''',
                    ).toString(),
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
                  ),
                  duration: const Duration(milliseconds: 4000),
                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                ),
              );
            }

            safeSetState(() {});
          },
          selectedChipStyle: ChipStyle(
            backgroundColor: const Color(0xFF204A9C),
            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  letterSpacing: 0.0,
                ),
            iconColor: Colors.white,
            iconSize: 18.0,
            labelPadding: const EdgeInsetsDirectional.fromSTEB(12.0, 4.0, 12.0, 4.0),
            elevation: 2.0,
            borderWidth: 5.0,
            borderRadius: BorderRadius.circular(8.0),
          ),
          unselectedChipStyle: ChipStyle(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            textStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0.0,
                ),
            iconColor: const Color(0xFF14181B),
            iconSize: 18.0,
            labelPadding: const EdgeInsetsDirectional.fromSTEB(10.0, 4.0, 10.0, 4.0),
            elevation: 4.0,
            borderWidth: 5.0,
            borderRadius: BorderRadius.circular(8.0),
          ),
          chipSpacing: 10.0,
          rowSpacing: 10.0,
          multiselect: false,
          initialized: _model.choiceChipsValue != null,
          alignment: WrapAlignment.center,
          controller: _model.choiceChipsValueController ??=
              FormFieldController<List<String>>(
            [widget.lstDate!.first],
          ),
          wrapped: true,
        ),
      ],
    );
  }
}
