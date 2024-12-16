// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:another_flushbar/flushbar.dart';

Future showToastMessage(
    BuildContext context, String? message, bool? status, bool? index) async {
  // Add your function code here
  var color = status! ? Colors.green : Color(0xFFFF5733);
  var icon = status ? Icons.check : Icons.warning;
  var flushbarPosition =
      index! ? FlushbarPosition.TOP : FlushbarPosition.BOTTOM;
  await Flushbar(
    message: message,
    duration: Duration(seconds: 3),
    backgroundColor: color,
    icon: Icon(
      icon,
      color: Colors.white,
    ),
    forwardAnimationCurve: Curves.decelerate,
    margin: EdgeInsets.all(8),
    borderRadius: BorderRadius.circular(8),
    flushbarPosition: flushbarPosition,
  ).show(context);
}
