import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'welcome_doctor_model.dart';
export 'welcome_doctor_model.dart';

class WelcomeDoctorWidget extends StatefulWidget {
  const WelcomeDoctorWidget({super.key});

  @override
  State<WelcomeDoctorWidget> createState() => _WelcomeDoctorWidgetState();
}

class _WelcomeDoctorWidgetState extends State<WelcomeDoctorWidget> {
  late WelcomeDoctorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WelcomeDoctorModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(10.0, 30.0, 0.0, 0.0),
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.5,
            height: MediaQuery.sizeOf(context).height * 0.15,
            decoration: BoxDecoration(
              color: const Color(0xFF204A9C),
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: const AlignmentDirectional(-1.0, -1.0),
              child: Text(
                'Hi Doctor Dong Hen',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      fontSize: 18.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(-1.0, -1.0),
              child: Text(
                'Welcome to your home',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      fontSize: 18.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ].divide(const SizedBox(height: 10.0)),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            'assets/images/hehee.png',
            width: MediaQuery.sizeOf(context).width * 0.1,
            height: MediaQuery.sizeOf(context).height * 0.25,
            fit: BoxFit.scaleDown,
          ),
        ),
      ],
    );
  }
}
