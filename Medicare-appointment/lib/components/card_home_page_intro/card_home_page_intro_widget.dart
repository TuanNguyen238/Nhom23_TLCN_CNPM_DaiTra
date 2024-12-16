import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'card_home_page_intro_model.dart';
export 'card_home_page_intro_model.dart';

class CardHomePageIntroWidget extends StatefulWidget {
  const CardHomePageIntroWidget({super.key});

  @override
  State<CardHomePageIntroWidget> createState() =>
      _CardHomePageIntroWidgetState();
}

class _CardHomePageIntroWidgetState extends State<CardHomePageIntroWidget> {
  late CardHomePageIntroModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardHomePageIntroModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
      child: Container(
        width: 180.0,
        height: 200.0,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 7.0,
              color: Color(0x2F1D2429),
              offset: Offset(
                0.0,
                3.0,
              ),
            )
          ],
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/intro.png',
                  width: double.infinity,
                  height: 100.0,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  FFLocalizations.of(context).getText(
                    '22ct8k1p' /* GIỚI THIỆU MEDIC... */,
                  ),
                  textAlign: TextAlign.justify,
                  style: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily: 'Readex Pro',
                        color: const Color(0xFF14181B),
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Expanded(
                child: Text(
                  FFLocalizations.of(context).getText(
                    'ujpt7zch' /* Medicare là 1 ứng dụng được xâ... */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
            ].divide(const SizedBox(height: 5.0)),
          ),
        ),
      ),
    );
  }
}
