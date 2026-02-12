import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'loginotp_model.dart';
export 'loginotp_model.dart';

class LoginotpWidget extends StatefulWidget {
  const LoginotpWidget({
    super.key,
    this.phone,
  });

  final String? phone;

  static String routeName = 'loginotp';
  static String routePath = '/loginotp';

  @override
  State<LoginotpWidget> createState() => _LoginotpWidgetState();
}

class _LoginotpWidgetState extends State<LoginotpWidget> {
  late LoginotpModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginotpModel());

    _model.newotpFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
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
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Container(
              decoration: BoxDecoration(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                      child: Text(
                        'Phone Verification',
                        style: FlutterFlowTheme.of(context).titleLarge.override(
                              font: GoogleFonts.poppins(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .titleLarge
                                    .fontStyle,
                              ),
                              fontSize: 22.0,
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .titleLarge
                                  .fontStyle,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 120.0, 0.0, 0.0),
                      child: Text(
                        'Enter Your OTP code',
                        style: FlutterFlowTheme.of(context).labelLarge.override(
                              font: GoogleFonts.inter(
                                fontWeight: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .labelLarge
                                    .fontStyle,
                              ),
                              letterSpacing: 0.0,
                              fontWeight: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .fontWeight,
                              fontStyle: FlutterFlowTheme.of(context)
                                  .labelLarge
                                  .fontStyle,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(70.0, 20.0, 70.0, 0.0),
                      child: PinCodeTextField(
                        autoDisposeControllers: false,
                        appContext: context,
                        length: 4,
                        textStyle:
                            FlutterFlowTheme.of(context).bodyLarge.override(
                                  font: GoogleFonts.inter(
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .fontStyle,
                                  ),
                                  letterSpacing: 0.0,
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .fontStyle,
                                ),
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        enableActiveFill: false,
                        autoFocus: true,
                        focusNode: _model.newotpFocusNode,
                        enablePinAutofill: false,
                        errorTextSpace: 16.0,
                        showCursor: true,
                        cursorColor: FlutterFlowTheme.of(context).primary,
                        obscureText: false,
                        keyboardType: TextInputType.number,
                        pinTheme: PinTheme(
                          fieldHeight: 44.0,
                          fieldWidth: 44.0,
                          borderWidth: 2.0,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(8.0),
                            bottomRight: Radius.circular(8.0),
                            topLeft: Radius.circular(8.0),
                            topRight: Radius.circular(8.0),
                          ),
                          shape: PinCodeFieldShape.box,
                          activeColor: FlutterFlowTheme.of(context).primaryText,
                          inactiveColor: FlutterFlowTheme.of(context).alternate,
                          selectedColor: FlutterFlowTheme.of(context).primary,
                        ),
                        controller: _model.newotp,
                        onChanged: (_) {},
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        validator: _model.newotpValidator.asValidator(context),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 320.0, 0.0, 0.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          if (_model.newotp!.text != '') {
                            _model.otpcheck = await RiderAuthorizationCall.call(
                              newOTP: _model.newotp!.text,
                              phone: widget.phone,
                            );

                            if ((_model.otpcheck?.succeeded ?? true)) {
                              FFAppState().duty =
                                  RiderAuthorizationCall.riderOnDuty(
                                (_model.otpcheck?.jsonBody ?? ''),
                              )!;
                              FFAppState().RiderID =
                                  RiderAuthorizationCall.riderId(
                                (_model.otpcheck?.jsonBody ?? ''),
                              )!;
                              FFAppState().PrinterID =
                                  RiderAuthorizationCall.riderPrinterId(
                                (_model.otpcheck?.jsonBody ?? ''),
                              )!;
                              FFAppState().isVerified =
                                  RiderAuthorizationCall.riderIsVerified(
                                (_model.otpcheck?.jsonBody ?? ''),
                              )!;
                              FFAppState().token = RiderAuthorizationCall.token(
                                (_model.otpcheck?.jsonBody ?? ''),
                              )!;
                              FFAppState().Expirytoken =
                                  RiderAuthorizationCall.expirytoken(
                                (_model.otpcheck?.jsonBody ?? ''),
                              )!;
                              FFAppState().RiderUserName =
                                  RiderAuthorizationCall.riderUserName(
                                (_model.otpcheck?.jsonBody ?? ''),
                              )!;
                              FFAppState().loggedin = true;
                              FFAppState().businessId =
                                  RiderAuthorizationCall.riderBusinessId(
                                (_model.otpcheck?.jsonBody ?? ''),
                              )!
                                      .toList()
                                      .cast<int>();
                              FFAppState().tokenupdatedtime =
                                  getCurrentTimestamp;
                              FFAppState().currentRider =
                                  MasterRiderStruct.maybeFromMap(getJsonField(
                                (_model.otpcheck?.jsonBody ?? ''),
                                r'''$.MasterRider''',
                              ))!;
                              safeSetState(() {});
                              if (FFAppState().isVerified == true) {
                                FFAppState().loggedin = true;
                                safeSetState(() {});

                                context.pushNamed(HomeWidget.routeName);
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'please try again later',
                                      style: TextStyle(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).secondary,
                                  ),
                                );
                              }
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Wrong otp',
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).secondary,
                                ),
                              );
                            }
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Please Enter the OTP',
                                  style: TextStyle(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).secondary,
                              ),
                            );
                          }

                          safeSetState(() {});
                        },
                        text: 'Verify',
                        options: FFButtonOptions(
                          width: 280.0,
                          height: 40.0,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 0.0, 16.0, 0.0),
                          iconPadding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: Color(0xFFFA7936),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .titleSmall
                                          .fontStyle,
                                    ),
                                    color: Colors.white,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .fontStyle,
                                  ),
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
