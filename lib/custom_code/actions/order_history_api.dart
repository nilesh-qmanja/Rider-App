// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List<dynamic>> orderHistoryApi(
  // ✅ REQUIRED context
  int printerid,
  int riderId,
  String PhoneNumber,
  String token,
  bool OutforDelivery,
  bool OnDuty,
  bool isVerified,
  String username,
  List<int> BusinessId,
  String Status,
  String Otp,
) async {
  try {
    final uri = Uri.parse(
      'https://xrx9v2z4ul.execute-api.ap-south-1.amazonaws.com/CompletedOrders',
    );

    final headers = {
      'AuthorizationToken': token,
      'Content-Type': 'application/json',
    };

    final body = jsonEncode({
      'RiderId': riderId.toString(),
      'PrinterId': printerid.toString(),
      'PhoneNumber': PhoneNumber,
      'OutforDelivery': OutforDelivery,
      'OnDuty': OnDuty,
      'isVerified': isVerified,
      'username': username,
      'BusinessId': BusinessId,
      'Status': Status,
      'Otp': Otp,
    });

    final response = await http.post(uri, headers: headers, body: body);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      if (data != null && data['CompletedOrders'] is List) {
        return data['CompletedOrders'];
      } else {
        throw Exception('CompletedOrders key not found or invalid');
      }
    } else {
      throw Exception('API failed with status: ${response.statusCode}');
    }
  } catch (e) {
    throw Exception('API error: $e');
  }
}

// void _showSnackbar(BuildContext context, String message) {
//   ScaffoldMessenger.of(context).showSnackBar(
//     SnackBar(
//       content: Text(message),
//       duration: Duration(seconds: 2),
//     ),
//   );
// }
