import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'acceptorder_widget.dart' show AcceptorderWidget;
import 'package:flutter/material.dart';

class AcceptorderModel extends FlutterFlowModel<AcceptorderWidget> {
  ///  Local state fields for this page.

  bool accepted = true;

  bool deliveryStarted = true;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getLatLngFromCoordinates] action in Text widget.
  LatLng? locationbussiness1;
  // Stores action output result for [Custom Action - getLatLngFromPostalCode] action in Text widget.
  LatLng? locationcustomer1;
  // Stores action output result for [Backend Call - API (UpdateOrderStatus)] action in Button widget.
  ApiCallResponse? updateorderstatus;
  // Stores action output result for [Backend Call - API (RemoveRider)] action in Button widget.
  ApiCallResponse? apiremove;
  // Stores action output result for [Backend Call - API (SetOrderCompleteStatus)] action in Button widget.
  ApiCallResponse? setOrderCompleteStatusResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
