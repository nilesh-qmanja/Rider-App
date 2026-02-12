import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'loginotp_widget.dart' show LoginotpWidget;
import 'package:flutter/material.dart';

class LoginotpModel extends FlutterFlowModel<LoginotpWidget> {
  ///  Local state fields for this page.

  String? otpVar;

  int? statusotp;

  String? messageotp;

  ///  State fields for stateful widgets in this page.

  // State field(s) for newotp widget.
  TextEditingController? newotp;
  FocusNode? newotpFocusNode;
  String? Function(BuildContext, String?)? newotpValidator;
  // Stores action output result for [Backend Call - API (Rider Authorization)] action in Button widget.
  ApiCallResponse? otpcheck;

  @override
  void initState(BuildContext context) {
    newotp = TextEditingController();
  }

  @override
  void dispose() {
    newotpFocusNode?.dispose();
    newotp?.dispose();
  }
}
