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

Future<dynamic> getRiderByIdApi(
  // <-- Add this
  int printerid,
  int riderId,
  String token,
) async {
  final uri = Uri.parse(
    'https://xrx9v2z4ul.execute-api.ap-south-1.amazonaws.com/GetRiderById',
  );

  final headers = {
    'AuthorizationToken': token,
    'Content-Type': 'application/json',
  };

  final body = jsonEncode({
    'RiderId': riderId.toString(),
    'PrinterId': printerid.toString(),
  });

  final response = await http.post(uri, headers: headers, body: body);

  if (response.statusCode == 200) {
    final Map<String, dynamic> responseData = jsonDecode(response.body);

    if (responseData.containsKey('RiderVM')) {
      return responseData['RiderVM'];
    } else {
      throw Exception('RiderVM not found in response');
    }
  } else {
    throw Exception('API call failed with status code: ${response.statusCode}');
  }
}
