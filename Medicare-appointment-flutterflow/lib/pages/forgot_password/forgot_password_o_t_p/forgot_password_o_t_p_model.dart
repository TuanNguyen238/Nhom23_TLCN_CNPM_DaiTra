import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'forgot_password_o_t_p_widget.dart' show ForgotPasswordOTPWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class ForgotPasswordOTPModel extends FlutterFlowModel<ForgotPasswordOTPWidget> {
  ///  Local state fields for this page.

  int otpTimer = 59;

  ///  State fields for stateful widgets in this page.

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

  // Stores action output result for [Backend Call - API (request OTP API)] action in Button widget.
  ApiCallResponse? requestOutput;
  // Stores action output result for [Backend Call - API (verify OTP API)] action in Button widget.
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
