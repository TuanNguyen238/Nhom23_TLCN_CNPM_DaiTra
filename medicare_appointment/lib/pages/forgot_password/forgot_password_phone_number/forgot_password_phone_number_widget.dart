import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'forgot_password_phone_number_model.dart';
export 'forgot_password_phone_number_model.dart';

class ForgotPasswordPhoneNumberWidget extends StatefulWidget {
  const ForgotPasswordPhoneNumberWidget({super.key});

  @override
  State<ForgotPasswordPhoneNumberWidget> createState() =>
      _ForgotPasswordPhoneNumberWidgetState();
}

class _ForgotPasswordPhoneNumberWidgetState
    extends State<ForgotPasswordPhoneNumberWidget> {
  late ForgotPasswordPhoneNumberModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ForgotPasswordPhoneNumberModel());

    _model.txtPhonenumberTextController ??= TextEditingController();
    _model.txtPhonenumberFocusNode ??= FocusNode();
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
              'uulhmjhn' /* Quên mật khẩu */,
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      child: Form(
                        key: _model.formKey,
                        autovalidateMode: AutovalidateMode.disabled,
                        child: Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              8.0, 15.0, 8.0, 0.0),
                          child: TextFormField(
                            controller: _model.txtPhonenumberTextController,
                            focusNode: _model.txtPhonenumberFocusNode,
                            autofocus: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: FFLocalizations.of(context).getText(
                                '8rs98kdo' /* SĐT đăng nhập * */,
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
                                  color: FlutterFlowTheme.of(context).alternate,
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
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                            keyboardType: TextInputType.phone,
                            validator: _model
                                .txtPhonenumberTextControllerValidator
                                .asValidator(context),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
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
                          // callRequestOTPApi
                          _model.requestOutput = await RequestOTPAPICall.call(
                            phoneNumber:
                                _model.txtPhonenumberTextController.text,
                          );

                          await actions.showToastMessage(
                            context,
                            getJsonField(
                              (_model.requestOutput?.jsonBody ?? ''),
                              r'''$.message''',
                            ).toString(),
                            (_model.requestOutput?.statusCode ?? 200) == 200,
                            true,
                          );
                          if ((_model.requestOutput?.statusCode ?? 200) ==
                              200) {
                            // navigateForgotPassOTP

                            context.pushNamed(
                              'forgotPasswordOTP',
                              queryParameters: {
                                'phoneNumberOTP': serializeParam(
                                  _model.txtPhonenumberTextController.text,
                                  ParamType.String,
                                ),
                              }.withoutNulls,
                            );
                          }

                          safeSetState(() {});
                        },
                        text: FFLocalizations.of(context).getText(
                          'qsvbzyxz' /* Xác nhận */,
                        ),
                        options: FFButtonOptions(
                          width: double.infinity,
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
