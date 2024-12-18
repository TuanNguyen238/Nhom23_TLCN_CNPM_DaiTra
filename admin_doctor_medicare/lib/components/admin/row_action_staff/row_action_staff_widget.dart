import '/backend/api_requests/api_calls.dart';
import '/components/admin/dialog_edit_staff/dialog_edit_staff_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'row_action_staff_model.dart';
export 'row_action_staff_model.dart';

class RowActionStaffWidget extends StatefulWidget {
  const RowActionStaffWidget({
    super.key,
    required this.phoneNumber,
    required this.username,
    required this.email,
    required this.identifyCard,
    required this.status,
  });

  final String? phoneNumber;
  final String? username;
  final String? email;
  final String? identifyCard;
  final String? status;

  @override
  State<RowActionStaffWidget> createState() => _RowActionStaffWidgetState();
}

class _RowActionStaffWidgetState extends State<RowActionStaffWidget> {
  late RowActionStaffModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RowActionStaffModel());

    _model.switchValue = widget!.status == 'active';
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
      mainAxisSize: MainAxisSize.max,
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
                    child: DialogEditStaffWidget(
                      phoneNumber: widget!.phoneNumber!,
                      username: widget!.username!,
                      email: widget!.email!,
                      identifyCard: widget!.identifyCard!,
                    ),
                  );
                },
              );
            },
          ),
        ),
        Switch.adaptive(
          value: _model.switchValue!,
          onChanged: (newValue) async {
            safeSetState(() => _model.switchValue = newValue!);
            if (newValue!) {
              _model.updateStatusOnOutput = await UpdatestatusAPICall.call(
                token: FFAppState().token,
                phoneNumber: widget!.phoneNumber,
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
              _model.updateStatusOffOutput = await UpdatestatusAPICall.call(
                token: FFAppState().token,
                phoneNumber: widget!.phoneNumber,
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
