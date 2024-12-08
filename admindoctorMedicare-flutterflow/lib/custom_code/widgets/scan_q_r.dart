// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/backend/api_requests/api_calls.dart';

import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:flutter_web_qrcode_scanner/flutter_web_qrcode_scanner.dart';

class ScanQR extends StatefulWidget {
  const ScanQR({
    super.key,
    this.width,
    this.height,
    this.actionConfirm,
  });

  final Future Function(String value)? actionConfirm;

  final double? width;
  final double? height;

  @override
  State<ScanQR> createState() => _ScanQR();
}

class _ScanQR extends State<ScanQR> {
  String? _data;

  Widget _qr() {
    return SingleChildScrollView(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        _data == null
            ? Container()
            : Center(
                child: Text(
                  _data!,
                  style: const TextStyle(fontSize: 18, color: Colors.green),
                  textAlign: TextAlign.center,
                ),
              ),
        FlutterWebQrcodeScanner(
          cameraDirection: CameraDirection.back,
          onGetResult: (result) {
            setState(() {
              _data = result;
              widget.actionConfirm!(_data!);
            });
          },
          stopOnFirstResult: true,
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.8,
          onError: (error) {
            // print(error.message)
          },
          onPermissionDeniedError: () {
            //show alert dialog or something
          },
        ),
      ],
    ));
  }

  @override
  Widget build(BuildContext context) {
    return _qr();
  }
}
