import '/components/admin/dialog_logout/dialog_logout_widget.dart';
import '/components/admin/menu_option/menu_option_widget.dart';
import '/components/staff/menu_option_staff/menu_option_staff_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'nav_menu_staff_model.dart';
export 'nav_menu_staff_model.dart';

class NavMenuStaffWidget extends StatefulWidget {
  const NavMenuStaffWidget({super.key});

  @override
  State<NavMenuStaffWidget> createState() => _NavMenuStaffWidgetState();
}

class _NavMenuStaffWidgetState extends State<NavMenuStaffWidget> {
  late NavMenuStaffModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavMenuStaffModel());

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

    return Container(
      width: 260.0,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFF204A9C),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Image.asset(
                    'assets/images/logoflutter.png',
                    width: 150.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.menuOptionStaffModel,
                      updateCallback: () => safeSetState(() {}),
                      child: MenuOptionStaffWidget(
                        title: 'Requirement Request',
                        active:
                            FFAppState().activePage == 'Requirement Request',
                        activeIcon: Icon(
                          Icons.drive_file_rename_outline_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                        inactiveIcon: Icon(
                          Icons.drive_file_rename_outline_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                        navigateAction: () async {
                          context.pushNamed('RequirementRequest');
                        },
                      ),
                    ),
                  ].divide(const SizedBox(height: 6.0)),
                ),
                Divider(
                  thickness: 1.0,
                  indent: 24.0,
                  endIndent: 24.0,
                  color: FlutterFlowTheme.of(context).primaryText,
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.menuOptionModel1,
                      updateCallback: () => safeSetState(() {}),
                      child: MenuOptionWidget(
                        title: 'Settings',
                        active: FFAppState().activePage == 'Settings',
                        activeIcon: Icon(
                          Icons.settings_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 20.0,
                        ),
                        inactiveIcon: Icon(
                          Icons.settings_rounded,
                          color: FlutterFlowTheme.of(context).tertiaryText,
                          size: 20.0,
                        ),
                        navigateAction: () async {
                          context.pushNamed('SettingsStaff');
                        },
                      ),
                    ),
                    Builder(
                      builder: (context) => wrapWithModel(
                        model: _model.menuOptionModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: MenuOptionWidget(
                          title: 'Logout',
                          active: FFAppState().activePage == 'Logout',
                          activeIcon: Icon(
                            FFIcons.klogout,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 20.0,
                          ),
                          inactiveIcon: Icon(
                            FFIcons.klogout,
                            color: FlutterFlowTheme.of(context).tertiaryText,
                            size: 20.0,
                          ),
                          navigateAction: () async {
                            await showDialog(
                              context: context,
                              builder: (dialogContext) {
                                return Dialog(
                                  elevation: 0,
                                  insetPadding: EdgeInsets.zero,
                                  backgroundColor: Colors.transparent,
                                  alignment: const AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: const DialogLogoutWidget(),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ].divide(const SizedBox(height: 6.0)),
                ),
              ].divide(const SizedBox(height: 16.0)).addToEnd(const SizedBox(height: 24.0)),
            ),
          ),
        ],
      ),
    );
  }
}
