import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dialog_update_medicine_widget.dart' show DialogUpdateMedicineWidget;
import 'package:flutter/material.dart';

class DialogUpdateMedicineModel
    extends FlutterFlowModel<DialogUpdateMedicineWidget> {
  ///  Local state fields for this component.

  bool? uploaded;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for id widget.
  FocusNode? idFocusNode;
  TextEditingController? idTextController;
  String? Function(BuildContext, String?)? idTextControllerValidator;
  // State field(s) for medicinename widget.
  FocusNode? medicinenameFocusNode;
  TextEditingController? medicinenameTextController;
  String? Function(BuildContext, String?)? medicinenameTextControllerValidator;
  String? _medicinenameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Name is required!';
    }

    return null;
  }

  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  String? _descriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Description is required!';
    }

    return null;
  }

  // State field(s) for quantity widget.
  FocusNode? quantityFocusNode;
  TextEditingController? quantityTextController;
  String? Function(BuildContext, String?)? quantityTextControllerValidator;
  String? _quantityTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Quantity is required!';
    }

    return null;
  }

  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  String? _priceTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Price is required!';
    }

    return null;
  }

  // State field(s) for level widget.
  FocusNode? levelFocusNode;
  TextEditingController? levelTextController;
  String? Function(BuildContext, String?)? levelTextControllerValidator;
  String? _levelTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Level is required!';
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (updateMedicine)] action in Button widget.
  ApiCallResponse? apiResult1sg;
  // Stores action output result for [Backend Call - API (updateMedicine)] action in Button widget.
  ApiCallResponse? response2;

  @override
  void initState(BuildContext context) {
    medicinenameTextControllerValidator = _medicinenameTextControllerValidator;
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
    quantityTextControllerValidator = _quantityTextControllerValidator;
    priceTextControllerValidator = _priceTextControllerValidator;
    levelTextControllerValidator = _levelTextControllerValidator;
  }

  @override
  void dispose() {
    idFocusNode?.dispose();
    idTextController?.dispose();

    medicinenameFocusNode?.dispose();
    medicinenameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    quantityFocusNode?.dispose();
    quantityTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();

    levelFocusNode?.dispose();
    levelTextController?.dispose();
  }
}
