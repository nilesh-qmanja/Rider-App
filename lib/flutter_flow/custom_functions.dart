import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/custom_auth/auth_util.dart';

bool? isLengthTen(String? input) {
  if (input == null) return false;

  try {
    int number = int.parse(input); // Convert string to int ✅
    String numAsString = number.toString(); // Convert back to string ✅
    return numAsString.length == 10;
  } catch (e) {
    return false; // Agar input numeric nahi hai
  }
}

bool? otpLength(String? input) {
  if (input == null) return false;

  try {
    int number = int.parse(input); // Convert string to int ✅
    String numAsString = number.toString(); // Convert back to string ✅
    return numAsString.length == 4;
  } catch (e) {
    return false; // Agar input numeric nahi hai
  }
}

DateTime? convertStringToDateTime(String dateString) {
  final parsedDate = DateTime.parse(dateString);
  // Add 5 hours 30 minutes to convert from UTC to IST
  return parsedDate.toUtc().add(const Duration(hours: 5, minutes: 30));
}

LatLng getPostalCodetoLatLng(String postalCode) {
  try {
    final parts = postalCode.split('|');
    final lat = double.parse(parts[0].trim());
    final lng = double.parse(parts[1].trim());
    return LatLng(lat, lng);
  } catch (e) {
    throw Exception('Invalid postal code format. Use "lat|lng" format.');
  }
}

List<double> getLatLong(String postalCode) {
  List<String> parts = postalCode.split("|");

  // Convert to double (latitude at index 0, longitude at index 1)
  double lat = double.parse(parts[0]);
  double lng = double.parse(parts[1]);

  return [lat, lng];
}

bool? is24HoursPassed(DateTime? pastDate) {
  if (pastDate == null) {
    return false;
  }

  final now = DateTime.now(); // Current time
  final diff = now.difference(pastDate); // Difference between now & past date

  return diff.inHours >= 24; // true if >= 24 hours
}
