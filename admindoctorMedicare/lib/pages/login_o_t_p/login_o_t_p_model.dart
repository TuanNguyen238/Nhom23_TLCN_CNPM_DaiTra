import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_o_t_p_widget.dart' show LoginOTPWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class LoginOTPModel extends FlutterFlowModel<LoginOTPWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Stores action output result for [Backend Call - API (requestOTP API)] action in LoginOTP widget.
  ApiCallResponse? requestOTPOutput;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 59000;
  int timerMilliseconds = 59000;
  String timerValue = StopWatchTimer.getDisplayTime(
    59000,
    hours: false,
    minute: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Stores action output result for [Backend Call - API (requestOTP API)] action in Button widget.
  ApiCallResponse? requestOutput;
  // Stores action output result for [Backend Call - API (verifyOTP API)] action in Button-Login widget.
  ApiCallResponse? verifyOutput;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
    timerController.dispose();
  }
}
