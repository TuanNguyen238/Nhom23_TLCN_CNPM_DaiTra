import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/components/admin/dialog_update_medicine/dialog_update_medicine_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'row_action_medicine_model.dart';
export 'row_action_medicine_model.dart';

class RowActionMedicineWidget extends StatefulWidget {
  const RowActionMedicineWidget({
    super.key,
    required this.medicine,
  });

  final MedicineStruct? medicine;

  @override
  State<RowActionMedicineWidget> createState() =>
      _RowActionMedicineWidgetState();
}

class _RowActionMedicineWidgetState extends State<RowActionMedicineWidget> {
  late RowActionMedicineModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RowActionMedicineModel());

    _model.switchValue = widget!.medicine?.status == 'active';
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

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Builder(
          builder: (context) => FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 8.0,
            buttonSize: 40.0,
            fillColor: FlutterFlowTheme.of(context).primaryText,
            icon: Icon(
              Icons.edit_rounded,
              color: Color(0xFF475567),
              size: 24.0,
            ),
            onPressed: () async {
              await showDialog(
                context: context,
                builder: (dialogContext) {
                  return Dialog(
                    elevation: 0,
                    insetPadding: EdgeInsets.zero,
                    backgroundColor: Colors.transparent,
                    alignment: AlignmentDirectional(0.0, 0.0)
                        .resolve(Directionality.of(context)),
                    child: DialogUpdateMedicineWidget(
                      medicine: widget!.medicine!,
                    ),
                  );
                },
              );
            },
          ),
        ),
        Switch.adaptive(
          key: ValueKey('Switch_aevj'),
          value: _model.switchValue!,
          onChanged: (newValue) async {
            safeSetState(() => _model.switchValue = newValue!);
            if (newValue!) {
              _model.updateStatusOnOutput =
                  await UpdatestatusMedicineAPICall.call(
                id: widget!.medicine?.id,
                token: FFAppState().token,
              );

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    getJsonField(
                      (_model.updateStatusOnOutput?.jsonBody ?? ''),
                      r'''$.message''',
                    ).toString(),
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
                  ),
                  duration: Duration(milliseconds: 4000),
                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                ),
              );
              if ((_model.updateStatusOnOutput?.statusCode ?? 200) == 200) {
                safeSetState(() {
                  _model.switchValue = true;
                });
              }

              safeSetState(() {});
            } else {
              _model.updateStatusOffOutput =
                  await UpdatestatusMedicineAPICall.call(
                token: FFAppState().token,
                id: widget!.medicine?.id,
              );

              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    getJsonField(
                      (_model.updateStatusOffOutput?.jsonBody ?? ''),
                      r'''$.message''',
                    ).toString(),
                    style: TextStyle(
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
                  ),
                  duration: Duration(milliseconds: 4000),
                  backgroundColor: FlutterFlowTheme.of(context).secondary,
                ),
              );
              if ((_model.updateStatusOffOutput?.statusCode ?? 200) == 200) {
                safeSetState(() {
                  _model.switchValue = false;
                });
              }

              safeSetState(() {});
            }
          },
          activeColor: FlutterFlowTheme.of(context).primaryText,
          activeTrackColor: Color(0xFF4FA83A),
          inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
          inactiveThumbColor: FlutterFlowTheme.of(context).secondaryBackground,
        ),
      ],
    );
  }
}
