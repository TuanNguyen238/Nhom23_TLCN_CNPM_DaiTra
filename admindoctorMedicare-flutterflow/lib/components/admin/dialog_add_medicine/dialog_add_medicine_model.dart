import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dialog_add_medicine_widget.dart' show DialogAddMedicineWidget;
import 'package:flutter/material.dart';

class DialogAddMedicineModel extends FlutterFlowModel<DialogAddMedicineWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
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
      return 'Quantity required!';
    }

    if (val.length < 0) {
      return 'Quantity must be positive!';
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

    if (val.isEmpty) {
      return 'Price must be greater than 0!';
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

  // Stores action output result for [Backend Call - API (createMedicine API)] action in Button widget.
  ApiCallResponse? response;

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
