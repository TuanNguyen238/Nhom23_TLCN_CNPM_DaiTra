import '/components/admin/dialog_logout/dialog_logout_widget.dart';
import '/components/admin/menu_option/menu_option_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'nav_menu_model.dart';
export 'nav_menu_model.dart';

class NavMenuWidget extends StatefulWidget {
  const NavMenuWidget({super.key});

  @override
  State<NavMenuWidget> createState() => _NavMenuWidgetState();
}

class _NavMenuWidgetState extends State<NavMenuWidget> {
  late NavMenuModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavMenuModel());

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
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(
                      'assets/images/logoflutter.png',
                      width: 150.0,
                      height: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('Dashboard');
                      },
                      child: wrapWithModel(
                        model: _model.menuOptionModel1,
                        updateCallback: () => safeSetState(() {}),
                        child: MenuOptionWidget(
                          title: 'Dashboard',
                          active: FFAppState().activePage == 'Dashboard',
                          activeIcon: Icon(
                            Icons.dashboard_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          inactiveIcon: Icon(
                            Icons.dashboard_rounded,
                            color: FlutterFlowTheme.of(context).tertiaryText,
                            size: 24.0,
                          ),
                          navigateAction: () async {
                            context.goNamed('Dashboard');
                          },
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('UserList');
                      },
                      child: wrapWithModel(
                        model: _model.menuOptionModel2,
                        updateCallback: () => safeSetState(() {}),
                        child: MenuOptionWidget(
                          title: 'User List',
                          active: FFAppState().activePage == 'User List',
                          activeIcon: Icon(
                            Icons.people_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          inactiveIcon: Icon(
                            Icons.people_rounded,
                            color: FlutterFlowTheme.of(context).tertiaryText,
                            size: 24.0,
                          ),
                          navigateAction: () async {
                            context.goNamed('UserList');
                          },
                        ),
                      ),
                    ),
                    InkWell(
                      splashColor: Colors.transparent,
                      focusColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      onTap: () async {
                        context.pushNamed('Medicine');
                      },
                      child: wrapWithModel(
                        model: _model.menuOptionModel3,
                        updateCallback: () => safeSetState(() {}),
                        child: MenuOptionWidget(
                          title: 'Medicine',
                          active: FFAppState().activePage == 'Medicine',
                          activeIcon: Icon(
                            Icons.medication_rounded,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 24.0,
                          ),
                          inactiveIcon: Icon(
                            Icons.medication_rounded,
                            color: FlutterFlowTheme.of(context).tertiaryText,
                            size: 24.0,
                          ),
                          navigateAction: () async {
                            context.goNamed('Medicine');
                          },
                        ),
                      ),
                    ),
                    wrapWithModel(
                      model: _model.menuOptionModel4,
                      updateCallback: () => safeSetState(() {}),
                      child: MenuOptionWidget(
                        title: 'Add Room',
                        active: FFAppState().activePage == 'Add Room',
                        activeIcon: Icon(
                          Icons.add_home_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        inactiveIcon: Icon(
                          Icons.add_home_rounded,
                          color: FlutterFlowTheme.of(context).tertiaryText,
                          size: 24.0,
                        ),
                        navigateAction: () async {
                          context.goNamed('AddRoom');
                        },
                      ),
                    ),
                    wrapWithModel(
                      model: _model.menuOptionModel5,
                      updateCallback: () => safeSetState(() {}),
                      child: MenuOptionWidget(
                        title: 'Appointment',
                        active: FFAppState().activePage == 'Appointment',
                        activeIcon: FaIcon(
                          FontAwesomeIcons.fileAlt,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        inactiveIcon: FaIcon(
                          FontAwesomeIcons.fileAlt,
                          color: FlutterFlowTheme.of(context).tertiaryText,
                          size: 24.0,
                        ),
                        navigateAction: () async {
                          context.goNamed('Appointment');
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
                      model: _model.menuOptionModel6,
                      updateCallback: () => safeSetState(() {}),
                      child: MenuOptionWidget(
                        title: 'Settings',
                        active: FFAppState().activePage == 'Settings',
                        activeIcon: Icon(
                          Icons.settings_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24.0,
                        ),
                        inactiveIcon: Icon(
                          Icons.settings_rounded,
                          color: FlutterFlowTheme.of(context).tertiaryText,
                          size: 24.0,
                        ),
                        navigateAction: () async {
                          context.goNamed('Settings');
                        },
                      ),
                    ),
                    Builder(
                      builder: (context) => InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
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
                        child: wrapWithModel(
                          model: _model.menuOptionModel7,
                          updateCallback: () => safeSetState(() {}),
                          child: MenuOptionWidget(
                            title: 'Logout',
                            active: FFAppState().activePage == 'Logout',
                            activeIcon: Icon(
                              FFIcons.klogout,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                            inactiveIcon: Icon(
                              FFIcons.klogout,
                              color: FlutterFlowTheme.of(context).tertiaryText,
                              size: 24.0,
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
