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

import '/backend/api_requests/api_interceptor.dart';

class ExampleInterceptor extends FFApiInterceptor {
  @override
  Future<ApiCallOptions> onRequest({
    required ApiCallOptions options,
  }) async {
    // Get the token dynamically (e.g., from FFAppState, SharedPreferences, etc.)
    final token = FFAppState().token; // Replace with your token source

    // Add/modify headers
    final updatedHeaders = {
      ...options.headers, // Preserve existing headers
      'AuthorizationToken': 'Bearer $token', // Add dynamic token
      'X-Device-ID': 'some_device_id', // Optional: Add other dynamic headers
    };

    // Return updated options
    return options.copyWith(
      headers: updatedHeaders,
    );
  }

  @override
  Future<ApiCallResponse> onResponse({
    required ApiCallResponse response,
    required Future<ApiCallResponse> Function() retryFn,
  }) async {
    // Optional: Handle responses (e.g., refresh token on 401 errors)
    if (response.statusCode == 401) {
      // Example: Refresh token and retry
      await refreshToken();
      return retryFn();
    }
    return response;
  }

  // Helper function (example)
  Future<void> refreshToken() async {
    // Implement token refresh logic
  }
}
