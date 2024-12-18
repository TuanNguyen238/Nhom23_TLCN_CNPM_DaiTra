import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dialog_upload_file_model.dart';
export 'dialog_upload_file_model.dart';

class DialogUploadFileWidget extends StatefulWidget {
  const DialogUploadFileWidget({super.key});

  @override
  State<DialogUploadFileWidget> createState() => _DialogUploadFileWidgetState();
}

class _DialogUploadFileWidgetState extends State<DialogUploadFileWidget> {
  late DialogUploadFileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DialogUploadFileModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
      child: Container(
        width: 560.0,
        height: 290.0,
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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      'Upload File',
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: 'Open Sans',
                                color: Color(0xFF475567),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Stack(
                alignment: AlignmentDirectional(0.0, 0.0),
                children: [
                  SvgPicture.asset(
                    'assets/images/dashed-border.svg',
                    fit: BoxFit.contain,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FaIcon(
                        FontAwesomeIcons.cloudUploadAlt,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        size: 24.0,
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          final selectedFiles = await selectFiles(
                            multiFile: false,
                          );
                          if (selectedFiles != null) {
                            safeSetState(() => _model.isDataUploading = true);
                            var selectedUploadedFiles = <FFUploadedFile>[];

                            try {
                              selectedUploadedFiles = selectedFiles
                                  .map((m) => FFUploadedFile(
                                        name: m.storagePath.split('/').last,
                                        bytes: m.bytes,
                                      ))
                                  .toList();
                            } finally {
                              _model.isDataUploading = false;
                            }
                            if (selectedUploadedFiles.length ==
                                selectedFiles.length) {
                              safeSetState(() {
                                _model.uploadedLocalFile =
                                    selectedUploadedFiles.first;
                              });
                            } else {
                              safeSetState(() {});
                              return;
                            }
                          }
                        },
                        child: Text(
                          'Upload File',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Noto Sans',
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
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
                        iconPadding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Save',
                    options: FFButtonOptions(
                      height: 40.0,
                      padding:
                          EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
                      iconPadding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
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
    );
  }
}
