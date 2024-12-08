import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'row_action_user_model.dart';
export 'row_action_user_model.dart';

class RowActionUserWidget extends StatefulWidget {
  const RowActionUserWidget({
    super.key,
    required this.phoneNumber,
    required this.status,
  });

  final String? phoneNumber;
  final String? status;

  @override
  State<RowActionUserWidget> createState() => _RowActionUserWidgetState();
}

class _RowActionUserWidgetState extends State<RowActionUserWidget> {
  late RowActionUserModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RowActionUserModel());

    _model.switchValue = widget.status == 'active';
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
        Switch.adaptive(
          value: _model.switchValue!,
          onChanged: (newValue) async {
            safeSetState(() => _model.switchValue = newValue);
            if (newValue) {
              _model.updateStatusOnOutput = await UpdatestatusAPICall.call(
                token: FFAppState().token,
                phoneNumber: widget.phoneNumber,
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
                  duration: const Duration(milliseconds: 4000),
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
                phoneNumber: widget.phoneNumber,
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
                  duration: const Duration(milliseconds: 4000),
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
          activeTrackColor: const Color(0xFF4FA83A),
          inactiveTrackColor: FlutterFlowTheme.of(context).alternate,
          inactiveThumbColor: FlutterFlowTheme.of(context).secondaryBackground,
        ),
      ],
    );
  }
}
