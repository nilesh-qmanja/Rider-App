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

Future<List<dynamic>> activeOrdersApi(
  int printerid,
  int riderId,
  String token,
) async {
  print('Starting activeOrdersApi call...');
  print('printerid: $printerid, riderId: $riderId, token: $token');

  final uri = Uri.parse(
    'https://xrx9v2z4ul.execute-api.ap-south-1.amazonaws.com/ActiveOrders',
  );
  print('Calling URI: $uri');

  final headers = {
    'AuthorizationToken': token,
    'Content-Type': 'application/json',
  };
  final body = jsonEncode({
    'RiderId': riderId,
    'PrinterId': printerid,
  });
  print('Request body: $body');

  final response = await http.post(uri, headers: headers, body: body);

  print('Response status code: ${response.statusCode}');
  print('Response body: ${response.body}');

  if (response.statusCode == 200) {
    final Map<String, dynamic> responseData = jsonDecode(response.body);
    if (responseData.containsKey('ActiveOrders')) {
      print('ActiveOrders found in response.');
      return responseData['ActiveOrders'] as List<dynamic>;
    } else {
      print('ActiveOrders key not found in response.');
      throw Exception('ActiveOrders key not found in response');
    }
  } else {
    print('API call failed with status code: ${response.statusCode}');
    throw Exception('API call failed with status code: ${response.statusCode}');
  }
}
