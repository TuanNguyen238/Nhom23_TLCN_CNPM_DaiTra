import '/components/item_history_examination/item_history_examination_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'extension_examination_widget.dart' show ExtensionExaminationWidget;
import 'package:flutter/material.dart';

class ExtensionExaminationModel
    extends FlutterFlowModel<ExtensionExaminationWidget> {
  ///  State fields for stateful widgets in this page.

  // Models for itemHistoryExamination dynamic component.
  late FlutterFlowDynamicModels<ItemHistoryExaminationModel>
      itemHistoryExaminationModels;

  @override
  void initState(BuildContext context) {
    itemHistoryExaminationModels =
        FlutterFlowDynamicModels(() => ItemHistoryExaminationModel());
  }

  @override
  void dispose() {
    itemHistoryExaminationModels.dispose();
  }
}
