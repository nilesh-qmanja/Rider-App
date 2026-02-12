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

void showDebugSnack(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message), duration: Duration(seconds: 2)),
  );
}

Future<bool> updateRiderApi(
    BuildContext context,
    int printerid,
    int riderId,
    String token,
    int BusinessID,
    String otp,
    String tracking,
    double Lat,
    double Long,
    int orderId) async {
  final uri = Uri.parse(
    'https://xrx9v2z4ul.execute-api.ap-south-1.amazonaws.com/UpdateRider',
  );

  final headers = {
    'AuthorizationToken': token,
    'Content-Type': 'application/json',
  };

  final body = jsonEncode({
    'RiderId': riderId.toString(),
    'PrinterId': printerid.toString(),
    'Token': token,
    'OrderId': orderId.toString(),
    'BusinessId': BusinessID.toString(),
    'Status': "OutForDelivery",
    'Otp': otp,
    "tracking": tracking,
    "Lat": 30.8111855,
    "Long": 76.7239212
  });

  final response = await http.post(uri, headers: headers, body: body);

  if (response.statusCode == 200) {
    try {
      final data = jsonDecode(response.body);

      if (data['Status'] == 200 && data['Code'] == 200) {
        return true;
      } else {
        throw Exception('Unexpected response content');
      }
    } catch (e) {
      throw Exception('Invalid JSON response');
    }
  } else {
    throw Exception('API call failed with status code: ${response.statusCode}');
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
