import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'menu_option_staff_model.dart';
export 'menu_option_staff_model.dart';

class MenuOptionStaffWidget extends StatefulWidget {
  const MenuOptionStaffWidget({
    super.key,
    required this.title,
    bool? active,
    required this.navigateAction,
    required this.activeIcon,
    required this.inactiveIcon,
  }) : this.active = active ?? false;

  final String? title;
  final bool active;
  final Future Function()? navigateAction;
  final Widget? activeIcon;
  final Widget? inactiveIcon;

  @override
  State<MenuOptionStaffWidget> createState() => _MenuOptionStaffWidgetState();
}

class _MenuOptionStaffWidgetState extends State<MenuOptionStaffWidget> {
  late MenuOptionStaffModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuOptionStaffModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      child: Container(
        height: 48.0,
        decoration: BoxDecoration(),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 5.0,
              height: double.infinity,
              decoration: BoxDecoration(
                color: valueOrDefault<Color>(
                  widget!.active
                      ? FlutterFlowTheme.of(context).primaryText
                      : Colors.transparent,
                  Colors.transparent,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0.0),
                  bottomRight: Radius.circular(4.0),
                  topLeft: Radius.circular(0.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
            ),
            Expanded(
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await widget.navigateAction?.call();
                },
                child: Container(
                  width: 100.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Builder(
                        builder: (context) {
                          if (widget!.active) {
                            return widget!.activeIcon!;
                          } else {
                            return widget!.inactiveIcon!;
                          }
                        },
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 0.0, 0.0),
                        child: Text(
                          valueOrDefault<String>(
                            widget!.title,
                            'Dashboard',
                          ),
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Open Sans',
                                color: valueOrDefault<Color>(
                                  widget!.active
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context)
                                          .tertiaryText,
                                  FlutterFlowTheme.of(context).tertiaryText,
                                ),
                                fontSize: 16.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                    ]
                        .divide(SizedBox(width: 12.0))
                        .addToStart(SizedBox(width: 12.0))
                        .addToEnd(SizedBox(width: 12.0)),
                  ),
                ),
              ),
            ),
          ].divide(SizedBox(width: 8.0)).addToEnd(SizedBox(width: 12.0)),
        ),
      ),
      onEnter: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        safeSetState(() => _model.mouseRegionHovered = false);
      }),
    );
  }
}
