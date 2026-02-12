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

import 'package:onesignal_flutter/onesignal_flutter.dart';

Future<void> initOneSignal() async {
  OneSignal.Debug.setLogLevel(OSLogLevel.verbose);
  OneSignal.initialize('082d32e7-986c-41f0-b069-888a7933dde3');

  OneSignal.Notifications.requestPermission(true);

  // Optional: Add tag/userID if needed
  // OneSignal.User.addTag("user_id", "123");
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
