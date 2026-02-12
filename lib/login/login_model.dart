import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  Local state fields for this page.

  bool? isVerified;

  String? otp;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Mobile widget.
  FocusNode? mobileFocusNode;
  TextEditingController? mobileTextController;
  String? Function(BuildContext, String?)? mobileTextControllerValidator;
  String? _mobileTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Mobile No. is required';
    }

    if (val.length < 10) {
      return 'Invalid Phone Number';
    }
    if (val.length > 10) {
      return 'Invalid Phone Number';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Phone Login)] action in Button widget.
  ApiCallResponse? phoneLogin;

  @override
  void initState(BuildContext context) {
    mobileTextControllerValidator = _mobileTextControllerValidator;
  }

  @override
  void dispose() {
    mobileFocusNode?.dispose();
    mobileTextController?.dispose();
  }
}
