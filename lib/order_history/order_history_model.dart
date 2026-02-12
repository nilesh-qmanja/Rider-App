import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'order_history_widget.dart' show OrderHistoryWidget;
import 'package:flutter/material.dart';

class OrderHistoryModel extends FlutterFlowModel<OrderHistoryWidget> {
  ///  Local state fields for this page.

  dynamic completedOrdersListView;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - orderHistoryApi] action in orderHistory widget.
  List<dynamic>? orderHistoryresult5;
  InstantTimer? instantTimer;
  // Stores action output result for [Custom Action - orderHistoryApi] action in orderHistory widget.
  List<dynamic>? orderHistoryresult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    instantTimer?.cancel();
  }
}
