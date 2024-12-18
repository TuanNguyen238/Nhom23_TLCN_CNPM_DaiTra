import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'forgot_password_new_password_model.dart';
export 'forgot_password_new_password_model.dart';

class ForgotPasswordNewPasswordWidget extends StatefulWidget {
  const ForgotPasswordNewPasswordWidget({
    super.key,
    required this.phoneNumberOTP,
  });

  final String? phoneNumberOTP;

  @override
  State<ForgotPasswordNewPasswordWidget> createState() =>
      _ForgotPasswordNewPasswordWidgetState();
}

class _ForgotPasswordNewPasswordWidgetState
    extends State<ForgotPasswordNewPasswordWidget> {
  late ForgotPasswordNewPasswordModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ForgotPasswordNewPasswordModel());

    _model.txtUpdatePassTextController ??= TextEditingController();
    _model.txtUpdatePassFocusNode ??= FocusNode();

    _model.txtConfimUpdatePassTextController ??= TextEditingController();
    _model.txtConfimUpdatePassFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
              '2y1xy8od' /* Quên mật khẩu */,
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
          elevation: 0.14,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  child: Form(
                    key: _model.formKey,
                    autovalidateMode: AutovalidateMode.disabled,
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: TextFormField(
                              controller: _model.txtUpdatePassTextController,
                              focusNode: _model.txtUpdatePassFocusNode,
                              autofocus: true,
                              obscureText: !_model.txtUpdatePassVisibility,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  '0w1rjnyh' /* Mật khẩu mới * */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFF204A9C),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                suffixIcon: InkWell(
                                  onTap: () => safeSetState(
                                    () => _model.txtUpdatePassVisibility =
                                        !_model.txtUpdatePassVisibility,
                                  ),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    _model.txtUpdatePassVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                              validator: _model
                                  .txtUpdatePassTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8.0, 0.0, 8.0, 0.0),
                            child: TextFormField(
                              controller:
                                  _model.txtConfimUpdatePassTextController,
                              focusNode: _model.txtConfimUpdatePassFocusNode,
                              onChanged: (_) => EasyDebounce.debounce(
                                '_model.txtConfimUpdatePassTextController',
                                const Duration(milliseconds: 2000),
                                () async {
                                  if (_model.txtUpdatePassTextController.text ==
                                      _model.txtConfimUpdatePassTextController
                                          .text) {
                                    _model.checkConfirmPassword = true;
                                    safeSetState(() {});
                                    return;
                                  } else {
                                    _model.checkConfirmPassword = false;
                                    safeSetState(() {});
                                    return;
                                  }
                                },
                              ),
                              autofocus: true,
                              obscureText:
                                  !_model.txtConfimUpdatePassVisibility,
                              decoration: InputDecoration(
                                labelText: FFLocalizations.of(context).getText(
                                  '5k7c1x9g' /*  Xác nhận mật khẩu mới * */,
                                ),
                                labelStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                hintStyle: FlutterFlowTheme.of(context)
                                    .labelMedium
                                    .override(
                                      fontFamily: 'Readex Pro',
                                      letterSpacing: 0.0,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color(0xFF204A9C),
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 2.0,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                suffixIcon: InkWell(
                                  onTap: () => safeSetState(
                                    () => _model.txtConfimUpdatePassVisibility =
                                        !_model.txtConfimUpdatePassVisibility,
                                  ),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    _model.txtConfimUpdatePassVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    letterSpacing: 0.0,
                                  ),
                              validator: _model
                                  .txtConfimUpdatePassTextControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          Builder(
                            builder: (context) {
                              if (_model.checkConfirmPassword ?? false) {
                                return Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.transparent,
                                  ),
                                );
                              } else {
                                return Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (_model.checkConfirmPassword == false)
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            15.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            '8phx864f' /* Mật khẩu không khớp! */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: const Color(0xFFD64343),
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                              ),
                                        ),
                                      ),
                                  ],
                                );
                              }
                            },
                          ),
                        ].divide(const SizedBox(height: 15.0)),
                      ),
                    ),
                  ),
                ),
              ),
              Flexible(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 10.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          // validateForm
                          if (_model.formKey.currentState == null ||
                              !_model.formKey.currentState!.validate()) {
                            return;
                          }
                          // callForgotAPI
                          _model.forgotOutput = await ForgotpassAPICall.call(
                            phoneNumber: widget.phoneNumberOTP,
                            password: _model.txtUpdatePassTextController.text,
                          );

                          await actions.showToastMessage(
                            context,
                            getJsonField(
                              (_model.forgotOutput?.jsonBody ?? ''),
                              r'''$.message''',
                            ).toString(),
                            (_model.forgotOutput?.statusCode ?? 200) == 200,
                            true,
                          );
                          if ((_model.forgotOutput?.statusCode ?? 200) == 200) {
                            // navigateLogin

                            context.goNamed('login');
                          }

                          safeSetState(() {});
                        },
                        text: FFLocalizations.of(context).getText(
                          'aq5g6e0m' /* Lưu */,
                        ),
                        options: FFButtonOptions(
                          width: MediaQuery.sizeOf(context).width * 1.0,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFF204A9C),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
