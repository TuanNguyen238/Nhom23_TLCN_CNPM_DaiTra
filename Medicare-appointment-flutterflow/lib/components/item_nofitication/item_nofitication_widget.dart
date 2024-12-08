import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'item_nofitication_model.dart';
export 'item_nofitication_model.dart';

class ItemNofiticationWidget extends StatefulWidget {
  const ItemNofiticationWidget({super.key});

  @override
  State<ItemNofiticationWidget> createState() => _ItemNofiticationWidgetState();
}

class _ItemNofiticationWidgetState extends State<ItemNofiticationWidget> {
  late ItemNofiticationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ItemNofiticationModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 1.0),
      child: Material(
        color: Colors.transparent,
        elevation: 1.0,
        child: Container(
          width: double.infinity,
          height: 80.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Material(
            color: Colors.transparent,
            child: ListTile(
              leading: Icon(
                Icons.mark_email_unread_outlined,
                color: FlutterFlowTheme.of(context).secondaryText,
              ),
              title: Text(
                FFLocalizations.of(context).getText(
                  'gdavbonq' /* Thanh toán thành công */,
                ),
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
              subtitle: Text(
                FFLocalizations.of(context).getText(
                  'fhpilszn' /* Cuộc hẹn Khám tim vào ngày 06... */,
                ),
                style: FlutterFlowTheme.of(context).labelMedium.override(
                      fontFamily: 'Readex Pro',
                      letterSpacing: 0.0,
                    ),
              ),
              tileColor: FlutterFlowTheme.of(context).secondaryBackground,
              dense: false,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
