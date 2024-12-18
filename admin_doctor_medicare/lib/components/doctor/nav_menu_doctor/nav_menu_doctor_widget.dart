import '/components/admin/dialog_logout/dialog_logout_widget.dart';
import '/components/admin/menu_option/menu_option_widget.dart';
import '/components/doctor/menu_option_doctor/menu_option_doctor_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'nav_menu_doctor_model.dart';
export 'nav_menu_doctor_model.dart';

class NavMenuDoctorWidget extends StatefulWidget {
  const NavMenuDoctorWidget({super.key});

  @override
  State<NavMenuDoctorWidget> createState() => _NavMenuDoctorWidgetState();
}

class _NavMenuDoctorWidgetState extends State<NavMenuDoctorWidget> {
  late NavMenuDoctorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavMenuDoctorModel());

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
      decoration: BoxDecoration(
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
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                  child: Image.asset(
                    'assets/images/logoflutter.png',
                    width: 150.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                ),
                wrapWithModel(
                  model: _model.menuOptionDoctorModel1,
                  updateCallback: () => safeSetState(() {}),
                  child: MenuOptionDoctorWidget(
                    title: 'Appointment',
                    active: FFAppState().activePage == 'Medicine Records',
                    activeIcon: Icon(
                      Icons.insert_drive_file,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 20.0,
                    ),
                    inactiveIcon: Icon(
                      Icons.insert_drive_file,
                      color: FlutterFlowTheme.of(context).tertiaryText,
                      size: 20.0,
                    ),
                    navigateAction: () async {
                      context.pushNamed('MedicalRecords');
                    },
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    wrapWithModel(
                      model: _model.menuOptionDoctorModel2,
                      updateCallback: () => safeSetState(() {}),
                      child: MenuOptionDoctorWidget(
                        title: 'Schedule',
                        active: FFAppState().activePage == 'Schedule',
                        activeIcon: Icon(
                          Icons.calendar_month_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 20.0,
                        ),
                        inactiveIcon: Icon(
                          Icons.calendar_month_rounded,
                          color: FlutterFlowTheme.of(context).tertiaryText,
                          size: 20.0,
                        ),
                        navigateAction: () async {
                          context.pushNamed('Schedule');
                        },
                      ),
                    ),
                    wrapWithModel(
                      model: _model.menuOptionDoctorModel3,
                      updateCallback: () => safeSetState(() {}),
                      child: MenuOptionDoctorWidget(
                        title: 'Salary',
                        active: FFAppState().activePage == 'Salary',
                        activeIcon: Icon(
                          Icons.monetization_on_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 20.0,
                        ),
                        inactiveIcon: Icon(
                          Icons.monetization_on_sharp,
                          color: FlutterFlowTheme.of(context).tertiaryText,
                          size: 20.0,
                        ),
                        navigateAction: () async {
                          context.pushNamed('Salary');
                        },
                      ),
                    ),
                  ].divide(SizedBox(height: 6.0)),
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
                          context.pushNamed('SettingsDoctor');
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
                                  alignment: AlignmentDirectional(0.0, 0.0)
                                      .resolve(Directionality.of(context)),
                                  child: DialogLogoutWidget(),
                                );
                              },
                            );
                          },
                        ),
                      ),
                    ),
                  ].divide(SizedBox(height: 6.0)),
                ),
              ].divide(SizedBox(height: 16.0)).addToEnd(SizedBox(height: 24.0)),
            ),
          ),
        ],
      ),
    );
  }
}
