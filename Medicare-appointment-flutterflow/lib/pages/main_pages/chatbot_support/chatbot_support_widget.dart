import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lottie/lottie.dart';
import 'chatbot_support_model.dart';
export 'chatbot_support_model.dart';

class ChatbotSupportWidget extends StatefulWidget {
  const ChatbotSupportWidget({super.key});

  @override
  State<ChatbotSupportWidget> createState() => _ChatbotSupportWidgetState();
}

class _ChatbotSupportWidgetState extends State<ChatbotSupportWidget> {
  late ChatbotSupportModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ChatbotSupportModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultgjo = await InitChatBotAPICall.call();

      if ((_model.apiResultgjo?.succeeded ?? true)) {
        _model.sessionid = getJsonField(
          (_model.apiResultgjo?.jsonBody ?? ''),
          r'''$.sessionId''',
        ).toString().toString();
        safeSetState(() {});
      } else {
        _model.sessionid = '';
        safeSetState(() {});
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          iconTheme:
              IconThemeData(color: FlutterFlowTheme.of(context).primaryText),
          automaticallyImplyLeading: true,
          title: Text(
            FFLocalizations.of(context).getText(
              'qd3pdcgk' /* Chatbot */,
            ),
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Readex Pro',
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.15,
        ),
        body: SafeArea(
          top: true,
          child: Builder(
            builder: (context) {
              if (_model.sessionid != null && _model.sessionid != '') {
                return const FlutterFlowWebView(
                  content: 'https://typebot.co/appointment-medicare-ei3tiyp',
                  bypass: false,
                  height: 800.0,
                  verticalScroll: false,
                  horizontalScroll: false,
                );
              } else {
                return Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Stack(
                    children: [
                      Lottie.asset(
                        'assets/jsons/Main_Scene(1).json',
                        width: 200.0,
                        height: 200.0,
                        fit: BoxFit.contain,
                        animate: true,
                      ),
                    ],
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
