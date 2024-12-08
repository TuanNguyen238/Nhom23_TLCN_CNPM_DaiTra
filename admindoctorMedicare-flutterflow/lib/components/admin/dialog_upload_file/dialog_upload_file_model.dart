import '/flutter_flow/flutter_flow_util.dart';
import 'dialog_upload_file_widget.dart' show DialogUploadFileWidget;
import 'package:flutter/material.dart';

class DialogUploadFileModel extends FlutterFlowModel<DialogUploadFileWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
