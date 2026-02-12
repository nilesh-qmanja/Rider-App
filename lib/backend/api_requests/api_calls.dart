import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class PhoneLoginCall {
  static Future<ApiCallResponse> call({
    String? phone = '',
    String? newOTP = '',
  }) async {
    final ffApiRequestBody = '''
{
  "Phone":"${escapeStringForJson(phone)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Phone Login',
      apiUrl:
          'https://xrx9v2z4ul.execute-api.ap-south-1.amazonaws.com/RiderMasterPhoneLogin',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.Status''',
      ));
  static String? resetotp(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.resetOTP''',
      ));
  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class ActiveOrderCall {
  static Future<ApiCallResponse> call({
    int? riderID,
    int? printerID,
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "RiderId": ${riderID},
  "PrinterId": ${printerID}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Active Order',
      apiUrl:
          'https://xrx9v2z4ul.execute-api.ap-south-1.amazonaws.com/ActiveOrders',
      callType: ApiCallType.POST,
      headers: {
        'AuthorizationToken': '${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List? activeOrders(dynamic response) => getJsonField(
        response,
        r'''$.ActiveOrders''',
        true,
      ) as List?;
  static int? orderID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.ActiveOrders[:].ID''',
      ));
  static String? orderDate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ActiveOrders[:].OrderDate''',
      ));
  static String? deliveryType(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.ActiveOrders[:].DeliveryType''',
      ));
  static String? deliveryTime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.ActiveOrders[:].DeliveryTime''',
      ));
  static String? paymentType(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.ActiveOrders[:].PaymentType''',
      ));
  static double? subTotal(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.ActiveOrders[:].SubTotal''',
      ));
  static double? shippingFee(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.ActiveOrders[:].ShippingFee''',
      ));
  static double? orderTotal(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.ActiveOrders[:].OrderTotal''',
      ));
  static String? firstName(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ActiveOrders[:].FirstName''',
      ));
  static String? email(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ActiveOrders[:].Email''',
      ));
  static String? phone(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ActiveOrders[:].Phone''',
      ));
  static String? address(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ActiveOrders[:].Address''',
      ));
  static String? postalCode(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.ActiveOrders[:].PostalCode''',
      ));
  static String? notes(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ActiveOrders[:].Notes''',
      ));
  static String? responseFromPrinter(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.ActiveOrders[:].ResponceFromPrinter''',
      ));
  static bool? cancelled(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.ActiveOrders[:].Cancelled''',
      ));
  static double? voucherCodeDiscount(dynamic response) =>
      castToType<double>(getJsonField(
        response,
        r'''$.ActiveOrders[:].VoucherCodeDiscount''',
      ));
  static bool? printed(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.ActiveOrders[:].Printed''',
      ));
  static double? discount(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.ActiveOrders[:].Discount''',
      ));
  static int? discountID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.ActiveOrders[:].DiscountID''',
      ));
  static int? businessDetailId(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.ActiveOrders[:].BusinessDetailID''',
      ));
  static int? customerID(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.ActiveOrders[:].CustomerID''',
      ));
  static String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ActiveOrders[:].Status''',
      ));
  static String? appType(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ActiveOrders[:].AppType''',
      ));
  static String? printerStatus(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.ActiveOrders[:].PrinterStatus''',
      ));
  static double? totalTax(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.ActiveOrders[:].TotalTax''',
      ));
  static String? acknowledgedDate(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.ActiveOrders[:].AcknowledgedDate''',
      ));
  static String? completed(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.ActiveOrders[:].Completed''',
      ));
  static String? readyInKitchenTime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.ActiveOrders[:].ReadyInKitchenTime''',
      ));
  static String? ppresponseText(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.ActiveOrders[:].PpresponseText''',
      ));
  static String? businessName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.ActiveOrders[:].BusinessName''',
      ));
  static int? packageCharges(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.ActiveOrders[:].PackageCharges''',
      ));
  static dynamic businessDetail(dynamic response) => getJsonField(
        response,
        r'''$.ActiveOrders[:].businessDetail''',
      );
  static int? businessDetailID(dynamic response) =>
      castToType<int>(getJsonField(
        response,
        r'''$.ActiveOrders[:].businessDetail.Id''',
      ));
}

class RiderAuthorizationCall {
  static Future<ApiCallResponse> call({
    String? phone = '',
    String? newOTP = '',
  }) async {
    final ffApiRequestBody = '''
{
  "Phone": "${escapeStringForJson(phone)}",
  "newOTP": "${escapeStringForJson(newOTP)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Rider Authorization',
      apiUrl:
          'https://xrx9v2z4ul.execute-api.ap-south-1.amazonaws.com/rider-authorization',
      callType: ApiCallType.POST,
      headers: {
        'key': 'fzw9DZSsb3764obxQXoTVw',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.Status''',
      ));
  static String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.AuthToken.Token''',
      ));
  static String? expirytoken(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.AuthToken.expireToken''',
      ));
  static int? riderId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.MasterRider.RiderId''',
      ));
  static List<int>? riderBusinessId(dynamic response) => (getJsonField(
        response,
        r'''$.MasterRider.BusinessId''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static String? riderPhoneNumber(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.MasterRider.PhoneNumber''',
      ));
  static int? riderPrinterId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.MasterRider.PrinterId''',
      ));
  static bool? riderOnDuty(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.MasterRider.OnDuty''',
      ));
  static bool? riderIsVerified(dynamic response) =>
      castToType<bool>(getJsonField(
        response,
        r'''$.MasterRider.isVerified''',
      ));
  static String? riderUserName(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.MasterRider.username''',
      ));
}

class UpdateOrderStatusCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? riderId = '',
    String? printerId = '',
    String? orderId = '',
    String? businessId = '',
    bool? outforDelivery,
    String? status = 'OutForDelivery',
    String? otp = '',
    double? lat,
    double? long,
    String? tracking = '',
  }) async {
    final ffApiRequestBody = '''
{
  "RiderId": "${escapeStringForJson(riderId)}",
  "PrinterId": "${escapeStringForJson(printerId)}",
  "OrderId": "${escapeStringForJson(orderId)}",
  "BusinessId": "${escapeStringForJson(businessId)}",
  "OutforDelivery": ${outforDelivery},
  "Status": "${escapeStringForJson(status)}",
  "Otp": "${escapeStringForJson(otp)}",
  "tracking": "${escapeStringForJson(tracking)}",
  "Lat": ${lat},
  "Long": ${long}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateOrderStatus',
      apiUrl:
          'https://xrx9v2z4ul.execute-api.ap-south-1.amazonaws.com/UpdateOrderStatus',
      callType: ApiCallType.POST,
      headers: {
        'AuthorizationToken': '${token}',
        'Key': 'fzw9DZSsb3764obxQXoTVw',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.Status''',
      ));
  static int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.Code''',
      ));
}

class RemoveRiderCall {
  static Future<ApiCallResponse> call({
    String? riderId = '',
    String? printerId = '',
    String? orderId = '',
    String? businessId = '',
    bool? outforDelivery,
    String? status = 'Ready In Kitchen',
    String? otp = '',
    String? tracking = '',
    double? lat,
    double? long,
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "RiderId": "${escapeStringForJson(riderId)}",
  "PrinterId": "${escapeStringForJson(printerId)}",
  "OrderId": "${escapeStringForJson(orderId)}",
  "BusinessId": "${escapeStringForJson(businessId)}",
  "OutforDelivery": ${outforDelivery},
  "Status": "Ready In Kitchen",
  "Otp": "${escapeStringForJson(otp)}",
  "tracking": "${escapeStringForJson(tracking)}",
  "Lat": ${lat},
  "Long": ${long}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'RemoveRider',
      apiUrl:
          'https://xrx9v2z4ul.execute-api.ap-south-1.amazonaws.com/RemoveRider',
      callType: ApiCallType.POST,
      headers: {
        'AuthorizationToken': '${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static int? status(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.Status''',
      ));
  static int? code(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.Code''',
      ));
}

class SetOrderCompleteStatusCall {
  static Future<ApiCallResponse> call({
    String? riderId = '',
    String? printerId = '',
    String? orderId = '',
    String? businessId = '',
    bool? outforDelivery,
    String? status = 'Completed',
    String? otp = '',
    String? tracking = '',
    double? lat,
    double? long,
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "RiderId": ${escapeStringForJson(riderId)},
  "PrinterId": ${escapeStringForJson(printerId)},
  "OrderId": ${escapeStringForJson(orderId)},
  "BusinessId": ${escapeStringForJson(businessId)},
  "OutforDelivery": ${outforDelivery},
  "Status": "Completed",
  "Otp": ${escapeStringForJson(otp)},
  "tracking": ${escapeStringForJson(tracking)},
  "Lat": ${lat},
  "Long": ${long}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'SetOrderCompleteStatus',
      apiUrl:
          'https://xrx9v2z4ul.execute-api.ap-south-1.amazonaws.com/SetOrderCompleteStatus',
      callType: ApiCallType.POST,
      headers: {
        'AuthorizationToken': '${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DeclineRequestCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    int? riderId,
    int? orderId,
    int? printerId,
  }) async {
    final ffApiRequestBody = '''
{
  "RiderId": ${riderId},
  "OrderId": ${orderId},
  "PrinterId": ${printerId}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'DeclineRequest',
      apiUrl:
          'https://xrx9v2z4ul.execute-api.ap-south-1.amazonaws.com/DeclineByRider',
      callType: ApiCallType.POST,
      headers: {
        'AuthorizationToken': '${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CompletedOrdersCall {
  static Future<ApiCallResponse> call({
    String? riderId = '',
    String? printerId = '',
    String? phoneNumber = '',
    bool? outforDelivery,
    bool? onDuty,
    bool? isVerified,
    String? username = '',
    List<int>? businessIdList,
    String? status = '',
    String? otp = '',
    String? token = '',
  }) async {
    final businessId = _serializeList(businessIdList);

    final ffApiRequestBody = '''
{
  "RiderId": ${escapeStringForJson(riderId)},
  "PrinterId": ${escapeStringForJson(printerId)},
  "PhoneNumber": ${escapeStringForJson(phoneNumber)},
  "OutforDelivery": ${outforDelivery},
  "OnDuty": ${onDuty},
  "isVerified": ${isVerified},
  "username": "cd978c89-e911-4527-8465-985064db9ecd",
 "BusinessId":${businessId},
 "Status": "Completed",
  "Otp":${escapeStringForJson(otp)}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'CompletedOrders',
      apiUrl:
          'https://xrx9v2z4ul.execute-api.ap-south-1.amazonaws.com/CompletedOrders',
      callType: ApiCallType.POST,
      headers: {
        'AuthorizationToken': '${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class DutyOnOffCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? riderId = '',
    List<int>? businessIdList,
    String? phoneNumber = '',
    int? printerId,
    bool? onDuty,
    bool? isVerified,
    String? otp = '',
    String? username = '',
  }) async {
    final businessId = _serializeList(businessIdList);

    final ffApiRequestBody = '''
{
  "RiderId": "${escapeStringForJson(riderId)}",
  "BusinessId": ${businessId},
  "PhoneNumber": "${escapeStringForJson(phoneNumber)}",
  "PrinterId": ${printerId},
  "OnDuty": ${onDuty},
  "isVerified": ${isVerified},
  "Otp": "${escapeStringForJson(otp)}",
  "username": "cd978c89-e911-4527-8465-985064db9ecd"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'DutyOnOff ',
      apiUrl:
          'https://xrx9v2z4ul.execute-api.ap-south-1.amazonaws.com/DutyOnOff',
      callType: ApiCallType.POST,
      headers: {
        'AuthorizationToken': '${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetRiderByIdCall {
  static Future<ApiCallResponse> call({
    String? riderId = '',
    String? printerId = '',
    String? phoneNumber = '',
    bool? outforDelivery,
    bool? onDuty,
    bool? isVerified,
    String? username = '',
    List<int>? businessIdList,
    String? status = '',
    String? otp = '',
    String? token = '',
  }) async {
    final businessId = _serializeList(businessIdList);

    final ffApiRequestBody = '''
{
  "RiderId": ${escapeStringForJson(riderId)},
  "PrinterId": ${escapeStringForJson(printerId)},
  "PhoneNumber": ${escapeStringForJson(phoneNumber)},
  "OutforDelivery": ${outforDelivery},
  "OnDuty": ${onDuty},
  "isVerified": ${isVerified},
  "username": "cd978c89-e911-4527-8465-985064db9ecd",
  "BusinessId": ${businessId},
  "Status": "Completed",
  "Otp": ${escapeStringForJson(otp)}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'GetRiderById',
      apiUrl:
          'https://xrx9v2z4ul.execute-api.ap-south-1.amazonaws.com/GetRiderById',
      callType: ApiCallType.POST,
      headers: {
        'AuthorizationToken': '${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class GetOrderHISTORYCall {
  static Future<ApiCallResponse> call({
    String? riderId = '',
    int? businessId,
    String? phoneNumber = '',
    int? printerId,
    bool? onDuty = true,
    bool? isVerified = true,
    String? otp = '',
    String? username = '',
    String? token = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetOrderHISTORY',
      apiUrl:
          'https://xrx9v2z4ul.execute-api.ap-south-1.amazonaws.com/CompletedOrders',
      callType: ApiCallType.GET,
      headers: {
        'AuthorizationToken': '${token}',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class UpdateRiderCall {
  static Future<ApiCallResponse> call({
    String? riderId = '',
    String? printerId = '',
    String? orderId = '',
    String? businessId = '',
    bool? outforDelivery = true,
    String? status = '',
    String? otp = '',
    bool? trackingDisable,
    double? lat,
    double? long,
    String? token = '',
  }) async {
    final ffApiRequestBody = '''
{
  "RiderId": "${escapeStringForJson(riderId)}",
  "PrinterId": "${escapeStringForJson(printerId)}",
  "OrderId": "${escapeStringForJson(printerId)}",
  "BusinessId": "${escapeStringForJson(businessId)}",
  "OutforDelivery": ${outforDelivery},
  "Status": "${escapeStringForJson(status)}",
  "Otp": "${escapeStringForJson(otp)}",
  "trackingDisable": ${trackingDisable},
  "Lat": ${lat},
  "Long": ${long}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'UpdateRider',
      apiUrl:
          'https://xrx9v2z4ul.execute-api.ap-south-1.amazonaws.com/UpdateRider',
      callType: ApiCallType.POST,
      headers: {
        'AuthorizationToken': '${token}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  if (item is DocumentReference) {
    return item.path;
  }
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
