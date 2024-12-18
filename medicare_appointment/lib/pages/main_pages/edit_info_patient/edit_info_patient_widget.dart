import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'edit_info_patient_model.dart';
export 'edit_info_patient_model.dart';

class EditInfoPatientWidget extends StatefulWidget {
  const EditInfoPatientWidget({
    super.key,
    required this.patientDetailed,
  });

  final PatientStruct? patientDetailed;

  @override
  State<EditInfoPatientWidget> createState() => _EditInfoPatientWidgetState();
}

class _EditInfoPatientWidgetState extends State<EditInfoPatientWidget> {
  late EditInfoPatientModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditInfoPatientModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // upđatePageState
      _model.txtDOB = widget.patientDetailed?.dateOfBirth;
      _model.location = functions
          .getLocationSplitted(widget.patientDetailed?.address)!
          .toList()
          .cast<String>();
      safeSetState(() {});
      safeSetState(() {
        _model.txtDiachiTextController?.text = _model.location.firstOrNull!;
      });
    });

    _model.txtNameTextController1 ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.patientDetailed?.fullName,
      'Họ tên bệnh nhân',
    ));
    _model.txtNameFocusNode1 ??= FocusNode();

    _model.txtSDTTextController ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.patientDetailed?.phoneNumber,
      'Số điện thoại',
    ));
    _model.txtSDTFocusNode ??= FocusNode();

    _model.txtNameTextController2 ??= TextEditingController(
        text: valueOrDefault<String>(
      widget.patientDetailed?.identifyCard,
      'CCCD',
    ));
    _model.txtNameFocusNode2 ??= FocusNode();

    _model.txtDiachiTextController ??= TextEditingController();
    _model.txtDiachiFocusNode ??= FocusNode();

    _model.txtTenNthanTextController ??= TextEditingController(
        text: widget.patientDetailed?.relative.fullName);
    _model.txtTenNthanFocusNode ??= FocusNode();

    _model.txtDiaChiNthanTextController ??=
        TextEditingController(text: widget.patientDetailed?.relative.address);
    _model.txtDiaChiNthanFocusNode ??= FocusNode();

    _model.txtSDTNthanTextController ??= TextEditingController(
        text: widget.patientDetailed?.relative.phoneNumber);
    _model.txtSDTNthanFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
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
              'aqlb6uk2' /* Chỉnh sửa thông tin bệnh nhân */,
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
          child: Align(
            alignment: const AlignmentDirectional(0.0, 1.0),
            child: Stack(
              children: [
                Form(
                  key: _model.formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(0.0, -1.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 0.0, 0.0),
                            child: Container(
                              width: 120.0,
                              height: 120.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/avata.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        if (widget.patientDetailed?.status == 'active')
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: Card(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: const Color(0xFFFDF5DE),
                              elevation: 0.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  const Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 10.0, 0.0),
                                    child: Icon(
                                      Icons.warning_amber_rounded,
                                      color: Color(0xFFEE662D),
                                      size: 24.0,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 20.0, 10.0),
                                      child: Text(
                                        FFLocalizations.of(context).getText(
                                          'i4blpq2o' /* Bệnh nhân đã đặt khám. Không t... */,
                                        ),
                                        textAlign: TextAlign.justify,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color: const Color(0xFFEE662D),
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 20.0, 8.0, 0.0),
                          child: TextFormField(
                            controller: _model.txtNameTextController1,
                            focusNode: _model.txtNameFocusNode1,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                '4i2kcitj' /* Họ và tên * */,
                              ),
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: FFLocalizations.of(context).getText(
                                '92voqbkj' /* Nhập họ và tên */,
                              ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF204A9C),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            validator: _model.txtNameTextController1Validator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 20.0, 8.0, 0.0),
                          child: TextFormField(
                            controller: _model.txtSDTTextController,
                            focusNode: _model.txtSDTFocusNode,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                '9k73u1u7' /* SĐT liên lạc */,
                              ),
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: FFLocalizations.of(context).getText(
                                'b4i16b74' /* Nhập SĐT liên lạc */,
                              ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF204A9C),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            validator: _model.txtSDTTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 15.0, 0.0, 5.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              '8gttg6us' /* Chọn ngày sinh */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              final datePickedDate = await showDatePicker(
                                context: context,
                                initialDate: getCurrentTimestamp,
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2050),
                                builder: (context, child) {
                                  return wrapInMaterialDatePickerTheme(
                                    context,
                                    child!,
                                    headerBackgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                    headerForegroundColor:
                                        FlutterFlowTheme.of(context).info,
                                    headerTextStyle:
                                        FlutterFlowTheme.of(context)
                                            .headlineLarge
                                            .override(
                                              fontFamily: 'Outfit',
                                              fontSize: 32.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w600,
                                            ),
                                    pickerBackgroundColor:
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                    pickerForegroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryText,
                                    selectedDateTimeBackgroundColor:
                                        FlutterFlowTheme.of(context).primary,
                                    selectedDateTimeForegroundColor:
                                        FlutterFlowTheme.of(context).info,
                                    actionButtonForegroundColor:
                                        FlutterFlowTheme.of(context)
                                            .primaryText,
                                    iconSize: 24.0,
                                  );
                                },
                              );

                              if (datePickedDate != null) {
                                safeSetState(() {
                                  _model.datePicked = DateTime(
                                    datePickedDate.year,
                                    datePickedDate.month,
                                    datePickedDate.day,
                                  );
                                });
                              }
                              _model.txtDOB = dateTimeFormat(
                                "d/M/y",
                                _model.datePicked,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              );
                              safeSetState(() {});
                            },
                            child: Container(
                              width: MediaQuery.sizeOf(context).width * 1.0,
                              height: 50.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                borderRadius: BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  width: 1.0,
                                ),
                              ),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  FlutterFlowIconButton(
                                    borderColor: Colors.transparent,
                                    borderRadius: 20.0,
                                    borderWidth: 1.0,
                                    buttonSize: 40.0,
                                    fillColor: Colors.transparent,
                                    icon: Icon(
                                      Icons.calendar_month_sharp,
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      size: 24.0,
                                    ),
                                    onPressed: () {
                                      print('IconButton pressed ...');
                                    },
                                  ),
                                  Text(
                                    valueOrDefault<String>(
                                      _model.txtDOB,
                                      'Nhấn để chọn ngày sinh',
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryText,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.normal,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 15.0, 0.0, 5.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'cppq7wql' /* Chọn giới tính */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 0.0),
                          child: FlutterFlowDropDown<String>(
                            controller: _model.dropDownValueController ??=
                                FormFieldController<String>(
                              _model.dropDownValue ??= valueOrDefault<String>(
                                widget.patientDetailed?.gender,
                                'Giới tính',
                              ),
                            ),
                            options: List<String>.from(['Nam', 'Nữ']),
                            optionLabels: [
                              FFLocalizations.of(context).getText(
                                'vmdyjeph' /* Nam */,
                              ),
                              FFLocalizations.of(context).getText(
                                'uv0c372b' /* Nữ */,
                              )
                            ],
                            onChanged: (val) =>
                                safeSetState(() => _model.dropDownValue = val),
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 50.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                ),
                            hintText: FFLocalizations.of(context).getText(
                              '534sv55n' /* Giới tính * */,
                            ),
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            borderWidth: 1.0,
                            borderRadius: 8.0,
                            margin: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isOverButton: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 20.0, 8.0, 0.0),
                          child: TextFormField(
                            controller: _model.txtNameTextController2,
                            focusNode: _model.txtNameFocusNode2,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                'ojgj239e' /* Số căn cước công dân * */,
                              ),
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                              hintText: FFLocalizations.of(context).getText(
                                'bctsuepf' /* Nhập số căn cước công dân */,
                              ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF204A9C),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            validator: _model.txtNameTextController2Validator
                                .asValidator(context),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          height: 210.0,
                          child: custom_widgets.LocationVN(
                            width: double.infinity,
                            height: 210.0,
                            initialProvince: _model.location.lastOrNull,
                            initialDistrict: _model.location.elementAtOrNull(2),
                            initialWard: _model.location.elementAtOrNull(1),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 20.0, 8.0, 0.0),
                          child: TextFormField(
                            controller: _model.txtDiachiTextController,
                            focusNode: _model.txtDiachiFocusNode,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                '9aj6dtl8' /* Địa chỉ nhà * */,
                              ),
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: FFLocalizations.of(context).getText(
                                'k7652cwc' /* Nhập địa chỉ nhà cụ thể */,
                              ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF204A9C),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            validator: _model.txtDiachiTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                6.0, 15.0, 0.0, 0.0),
                            child: Text(
                              FFLocalizations.of(context).getText(
                                'zet01ork' /* Thông tin người thân */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 15.0, 8.0, 0.0),
                          child: TextFormField(
                            controller: _model.txtTenNthanTextController,
                            focusNode: _model.txtTenNthanFocusNode,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                '509vvkqd' /* Họ và tên người thân * */,
                              ),
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: FFLocalizations.of(context).getText(
                                'y3vppncn' /* Nhập họ và tên người thân */,
                              ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF204A9C),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            validator: _model.txtTenNthanTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 15.0, 8.0, 0.0),
                          child: TextFormField(
                            controller: _model.txtDiaChiNthanTextController,
                            focusNode: _model.txtDiaChiNthanFocusNode,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                'k3oxgaqj' /* Địa chỉ người thân  */,
                              ),
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: FFLocalizations.of(context).getText(
                                '3ygge4yv' /* Nhập địa chỉ người thân */,
                              ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF204A9C),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            validator: _model
                                .txtDiaChiNthanTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 15.0, 8.0, 0.0),
                          child: TextFormField(
                            controller: _model.txtSDTNthanTextController,
                            focusNode: _model.txtSDTNthanFocusNode,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                'ofsc519y' /* SĐT người thân */,
                              ),
                              labelStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              hintText: FFLocalizations.of(context).getText(
                                'uxe6q564' /* Nhập SĐT người thân */,
                              ),
                              hintStyle: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color(0xFF204A9C),
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).error,
                                  width: 1.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              filled: true,
                              fillColor: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            validator: _model.txtSDTNthanTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              10.0, 15.0, 0.0, 5.0),
                          child: Text(
                            FFLocalizations.of(context).getText(
                              'g2xoxpdr' /* Quan hệ người thân */,
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 8.0, 80.0),
                          child: FlutterFlowDropDown<String>(
                            controller:
                                _model.dropDownQHNthanValueController ??=
                                    FormFieldController<String>(
                              _model.dropDownQHNthanValue ??=
                                  widget.patientDetailed?.relative.relations,
                            ),
                            options: List<String>.from([
                              'Vợ',
                              'Chồng',
                              'Con',
                              'Cha',
                              'Mẹ',
                              'Anh',
                              'Chị',
                              'Ông',
                              'Bà',
                              'Khác'
                            ]),
                            optionLabels: [
                              FFLocalizations.of(context).getText(
                                'd3hv3y0e' /* Vợ */,
                              ),
                              FFLocalizations.of(context).getText(
                                '2xmx7ua7' /* Chồng */,
                              ),
                              FFLocalizations.of(context).getText(
                                '4p5bn12p' /* Con */,
                              ),
                              FFLocalizations.of(context).getText(
                                'bff0dk3h' /* Cha */,
                              ),
                              FFLocalizations.of(context).getText(
                                'bmnqppj2' /* Mẹ */,
                              ),
                              FFLocalizations.of(context).getText(
                                '4xzp7g7c' /* Anh */,
                              ),
                              FFLocalizations.of(context).getText(
                                '56etl2oi' /* Chị */,
                              ),
                              FFLocalizations.of(context).getText(
                                'pxlj3qz2' /* Ông */,
                              ),
                              FFLocalizations.of(context).getText(
                                'vw2d9fof' /* Bà */,
                              ),
                              FFLocalizations.of(context).getText(
                                'qr9twgg8' /* Khác */,
                              )
                            ],
                            onChanged: (val) => safeSetState(
                                () => _model.dropDownQHNthanValue = val),
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 50.0,
                            textStyle: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                ),
                            icon: Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 24.0,
                            ),
                            fillColor: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            elevation: 2.0,
                            borderColor:
                                FlutterFlowTheme.of(context).secondaryText,
                            borderWidth: 1.0,
                            borderRadius: 8.0,
                            margin: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 4.0, 16.0, 4.0),
                            hidesUnderline: true,
                            isOverButton: true,
                            isSearchable: false,
                            isMultiSelect: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    if (widget.patientDetailed?.status == 'inactive')
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            10.0, 0.0, 10.0, 5.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            // validateForm
                            if (_model.formKey.currentState != null) {
                              _model.formKey.currentState!.validate();
                            }
                            if (_model.datePicked == null) {}
                            if (_model.dropDownValue == null) {}
                            if (_model.dropDownQHNthanValue == null) {}
                            // callUpdatePatientAPI
                            _model.updateOutput =
                                await UpdatePatientAPICall.call(
                              authToken: FFAppState().token,
                              fullName: _model.txtNameTextController1.text,
                              phoneNumberPatient:
                                  _model.txtSDTTextController.text,
                              address:
                                  '${_model.txtDiachiTextController.text}, ${FFAppState().ward}, ${FFAppState().district}, ${FFAppState().city}',
                              identifyCard: _model.txtNameTextController2.text,
                              dateOfBirth: dateTimeFormat(
                                "y-M-d",
                                _model.datePicked,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              ),
                              patientCode: widget.patientDetailed?.patientCode,
                              gender: _model.dropDownValue,
                              fullNameRLT:
                                  _model.txtTenNthanTextController.text,
                              phoneNumberRLT:
                                  _model.txtSDTNthanTextController.text,
                              addressRLT:
                                  _model.txtDiaChiNthanTextController.text,
                              relations: _model.dropDownQHNthanValue,
                            );

                            await actions.showToastMessage(
                              context,
                              getJsonField(
                                (_model.updateOutput?.jsonBody ?? ''),
                                r'''$.message''',
                              ).toString(),
                              (_model.updateOutput?.statusCode ?? 200) == 200,
                              true,
                            );
                            if ((_model.updateOutput?.statusCode ?? 200) ==
                                200) {
                              context.safePop();
                            }

                            safeSetState(() {});
                          },
                          text: FFLocalizations.of(context).getText(
                            'tjeryzhb' /* Lưu */,
                          ),
                          options: FFButtonOptions(
                            width: double.infinity,
                            height: 50.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFF204A9C),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Outfit',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  fontSize: 14.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.normal,
                                ),
                            elevation: 2.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
