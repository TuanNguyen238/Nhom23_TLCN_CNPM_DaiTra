import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'forgot_pass_o_t_p_widget.dart' show ForgotPassOTPWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class ForgotPassOTPModel extends FlutterFlowModel<ForgotPassOTPWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  String? _pinCodeControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Pincode is required';
    }
    if (val.length < 6) {
      return 'Requires 6 characters.';
    }
    return null;
  }

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
    pinCodeControllerValidator = _pinCodeControllerValidator;
  }

  @override
  void dispose() {
    pinCodeController?.dispose();
    timerController.dispose();
  }
}
